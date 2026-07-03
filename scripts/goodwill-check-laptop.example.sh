#!/usr/bin/env bash
set -u

CONFIG="$HOME/.config/goodwill/goodwill.env"

green() { printf "\033[32m[OK]\033[0m %s\n" "$1"; }
yellow() { printf "\033[33m[WARN]\033[0m %s\n" "$1"; }
red() { printf "\033[31m[FAIL]\033[0m %s\n" "$1"; }
info() { printf "\033[36m[INFO]\033[0m %s\n" "$1"; }

section() {
  printf "\n========== %s ==========\n" "$1"
}

check_cmd() {
  if command -v "$1" >/dev/null 2>&1; then
    green "Command found: $1"
  else
    red "Missing command: $1"
  fi
}

check_url() {
  local name="$1"
  local url="$2"
  local code

  if [ -z "$url" ]; then
    yellow "$name URL not configured"
    return
  fi

  code="$(curl -sS -L --max-time 8 -o /dev/null -w "%{http_code}" "$url" 2>/dev/null || echo "000")"

  case "$code" in
    200|201|202|204|301|302|303|307|308|401|403)
      green "$name reachable: $url HTTP $code"
      ;;
    *)
      red "$name not reachable: $url HTTP $code"
      ;;
  esac
}

check_ssh() {
  local target="$1"

  if [ -z "$target" ]; then
    yellow "GOODWILL_SSH not configured"
    return
  fi

  if ssh -o BatchMode=yes -o ConnectTimeout=5 "$target" 'echo SSH_OK' 2>/dev/null | grep -q "SSH_OK"; then
    green "SSH works: $target"
  else
    red "SSH failed or key auth not ready: $target"
  fi
}

section "GoodWill Staging Laptop Check"

if [ -f "$CONFIG" ]; then
  # shellcheck disable=SC1090
  source "$CONFIG"
  green "Loaded config: $CONFIG"
else
  red "Missing config: $CONFIG"
  echo "Create it with: nano $CONFIG"
  exit 1
fi

section "Local System"
info "Hostname: $(hostname)"
info "User: $(whoami)"
info "Kernel: $(uname -r)"

check_cmd git
check_cmd ssh
check_cmd curl
check_cmd tailscale

section "Network"
if ping -c 1 -W 3 archlinux.org >/dev/null 2>&1; then
  green "Internet reachable"
else
  red "Internet test failed"
fi

if systemctl is-active --quiet NetworkManager 2>/dev/null; then
  green "NetworkManager is active"
else
  yellow "NetworkManager is not active or status unavailable"
fi

section "Tailscale"
if systemctl is-active --quiet tailscaled 2>/dev/null; then
  green "tailscaled is active"
else
  red "tailscaled is not active"
fi

if tailscale status >/dev/null 2>&1; then
  green "Tailscale status works"
  info "Laptop Tailscale IP: $(tailscale ip -4 2>/dev/null | head -n 1)"
else
  red "Tailscale status failed"
fi

section "GoodWill Server Access"
check_ssh "${GOODWILL_SSH:-}"

section "GoodWill Web Services"
check_url "Open WebUI" "${GOODWILL_OPENWEBUI_URL:-}"
check_url "Odysseus" "${GOODWILL_ODYSSEUS_URL:-}"
check_url "Uptime Kuma" "${GOODWILL_KUMA_URL:-}"
check_url "Ollama API" "${GOODWILL_OLLAMA_URL:-}"

section "Local GitHub Repo"
if [ -d "${GOODWILL_REPO:-}/.git" ]; then
  green "Repo found: $GOODWILL_REPO"
  cd "$GOODWILL_REPO" || exit 1

  current_branch="$(git branch --show-current 2>/dev/null || echo unknown)"
  info "Branch: $current_branch"

  if git diff --quiet && git diff --cached --quiet; then
    green "Repo working tree is clean"
  else
    yellow "Repo has local changes"
    git status --short
  fi
else
  yellow "Repo not found at: ${GOODWILL_REPO:-not configured}"
fi

section "Optional Remote Server Check"
if [ "${GOODWILL_RUN_REMOTE_CHECK:-0}" = "1" ]; then
  if ssh -o BatchMode=yes -o ConnectTimeout=5 "${GOODWILL_SSH:-}" 'test -x ~/bin/goodwill-check' 2>/dev/null; then
    info "Running remote ~/bin/goodwill-check on GoodWill server..."
    ssh -o BatchMode=yes -o ConnectTimeout=10 "${GOODWILL_SSH:-}" '~/bin/goodwill-check'
  else
    yellow "Remote ~/bin/goodwill-check not found or not executable"
  fi
else
  info "Remote check disabled"
fi

section "Done"
