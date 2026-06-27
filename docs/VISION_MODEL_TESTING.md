# Vision Model Testing

## Purpose

This document tracks the local vision-language model testing path for the GoodWill AI Workspace Lab.

The goal is to determine whether the current local AI stack can analyze screenshots/images in a useful way for mock MSP workflows.

Potential future use cases:

- Reading screenshots of errors
- Summarizing visible warning messages
- Interpreting basic application UI state
- Helping a technician describe what is visible in a client-provided image
- Drafting next troubleshooting steps based on screenshot context

This should remain mock-data-only until security and client-data policies are defined.

---

## Key conclusion

The initial image-analysis issue is not purely a hardware limitation.

Image analysis requires:

1. A vision-capable model.
2. A frontend that passes image data to the model.
3. A backend/API path that supports image input.

Text-only models cannot analyze screenshots/images even if the hardware is capable.

---

## First vision model target

Initial small test model:

```bash
ollama pull qwen2.5vl:3b
```

Important typo to avoid:

```text
qwen2.5v1:3b  # wrong: uses number 1
qwen2.5vl:3b  # correct: uses lowercase L for Vision-Language
```

---

## Recommended test order

### 1. Confirm Ollama sees the model

```bash
ollama list
```

### 2. Test the model directly through Ollama

Use a small PNG/JPG screenshot for first testing.

The direct API test should confirm whether the model itself can process image input before troubleshooting frontends.

### 3. Test through Open WebUI

Open WebUI is the preferred first frontend test because it is a simpler local AI frontend and is useful as a fallback while Odysseus is being adjusted.

Test prompt:

```text
Analyze this screenshot. Describe what is visible and identify any visible errors or warnings.
```

### 4. Test through Odysseus

After Ollama and Open WebUI work, test whether Odysseus can pass uploaded images/screenshots to the selected local vision-language model.

If Odysseus cannot pass image data correctly yet, continue using Open WebUI as the temporary vision frontend.

---

## Hardware expectations

The current server may run small vision-language models slowly, especially without the planned GPU power upgrade.

The immediate test goal is:

```text
Prove image analysis works at all.
```

The later optimization goal is:

```text
Improve speed and model size after the GPU/PSU power path is corrected.
```

---

## Current next steps

- Test `qwen2.5vl:3b` directly through Ollama.
- Test image upload through Open WebUI.
- Confirm whether Odysseus can pass image uploads to the selected model.
- Document whether the model gives useful output for mock MSP screenshots.
- Retest performance after GPU power hardware is corrected.
