# GPU Power and Validation Notes

## Current status

The lab now has a working auxiliary-powered NVIDIA GPU path. A GTX 1060 6GB is installed and functioning under Ubuntu, NVIDIA drivers, and Ollama.

Validated checks:

```bash
nvidia-smi
ollama ps
```

Expected result:

- `nvidia-smi` detects the GPU.
- GPU memory is visible.
- Ollama can load models with some or all processing assigned to GPU.

## Cable seating lesson

A clean POST does not guarantee that the GPU is actually usable by the NVIDIA driver.

Observed failure pattern:

```text
lspci sees the NVIDIA card
nvidia-smi says no devices were found
kernel logs report that the GPU does not have required power cables connected
```

Root cause in this project:

- The server/PSU-side GPU power cable was not fully seated.

Corrective action:

- Fully power off the server.
- Reseat the server-side GPU power connector.
- Reseat the GPU-side PCIe connector.
- Boot and retest with `nvidia-smi`.

## Validation commands

```bash
nvidia-smi

dmesg -T | grep -Ei "nvidia|xid|pcie|aer|power|fail" | tail -100

sudo ipmitool sdr elist | egrep -i "battery|ps|pwr|power|volt|curr|supply|fan|temp"

ollama run qwen2.5:3b-project "Reply with one short sentence: GPU test."
ollama ps
```

## Docker GPU validation

If Docker GPU access needs to be retested:

```bash
sudo docker run --rm --gpus all nvidia/cuda:12.4.1-base-ubuntu22.04 nvidia-smi
```

If the host sees the GPU but the container does not, check NVIDIA Container Toolkit / CDI configuration.

## Current recommendation

Keep the GTX 1060 6GB as the active lab GPU for this phase. Do not move to larger data-center GPUs until the software workflow, model behavior, cooling, and power requirements are better understood.
