---
slug: how-to-get-a-model-from-huggingface-on-mac-os
published: 2025-04-26
last_updated: 2026-11-13
layout: paper
title: "How to get a model from HuggingFace on Mac OS"
date: 2025-04-26
author: Uki D. Lucas
overview: "This guide documents the steps needed to download HuggingFace models (especially MLX models) correctly on Mac OS."
permalink: "/posts/how-to-get-a-model-from-huggingface-on-mac-os/"
redirect_from:
  - /AI/how-to-get-a-model-from-huggingface-on-mac-os/
---

This guide documents the steps needed to download HuggingFace models (especially MLX models) correctly on Mac OS.

## Install the required tools

```bash
pip install huggingface_hub hf_transfer
brew install git-lfs
```

## Enable accelerated downloads

```bash
export HF_HUB_ENABLE_HF_TRANSFER=1
```

This makes HuggingFace downloads much faster using parallel connections.

## Set up your local model storage

Create a clean folder structure for storing MLX models:

```bash
mkdir -p ~/Models/MLX
cd ~/Models/MLX
```

Example structure:

```plaintext
~/Models/MLX/
├── mistral-7b-instruct-v0.3-4bit/
├── phi-2/
├── smolvlm-256m/
```

## Initialize Git LFS

After installing `git-lfs`, you must initialize it:

```bash
git lfs install
```

Why? Git needs to know how to handle large files (like model weights) separately from normal, small text files.

Verify installation:

```bash
git lfs --version
```

## Download and clone a model

Move any old partial downloads if necessary:

```bash
mv mistral-7b-instruct-v0.3-4bit mistral-7b-instruct-v0.3-4bit-old
```

Clone the model repo cleanly:

```bash
git clone https://huggingface.co/mlx-community/Mistral-7B-Instruct-v0.3-4bit mistral-7b-instruct-v0.3-4bit
```

Go into the model folder:

```bash
cd mistral-7b-instruct-v0.3-4bit
```

Pull the actual large model weights:

```bash
git lfs pull
```

This downloads all `.mlx` weights, tokenizer files, and configs.

## Example of the final model path

After successful download:

```plaintext
~/Models/MLX/mistral-7b-instruct-v0.3-4bit/
├── config.json
├── model-00001-of-00002.safetensors
├── model-00002-of-00002.safetensors
├── tokenizer.json
├── tokenizer_config.json
├── special_tokens_map.json
└── ...
```

## Important tips

- Avoid folders with spaces (e.g., use `mistral-7b-instruct`, not `Mistral 7B Instruct`).
- Always use `git lfs pull` after cloning!
- Store models in `~/Models/MLX/` for clean organization.
- If cloning fails, move old folders aside first.

## Related tools

- [Git LFS Install Guide](https://git-lfs.github.com/)
- [Huggingface Hub CLI Docs](https://huggingface.co/docs/huggingface_hub/package_reference/cli)

Respectfully,

Uki D. Lucas
https://x.com/ukidlucas
