---
layout: single
title: "Running a 24B Mistral Model Locally with MLX macOS"
---
#public #blogger #ai #llm #macos #ml
blogger_updated: Fri, 23 Jan 2026 17:58:00 +0000
# Running a 24B Mistral Model Locally with MLX macOS

Published: Fri, 23 Jan 2026 17:58:00 +0000

## LLM model storage

Store model weights once, outside any tool-specific directory. This allows us to share them across multiple machines.

For example:

~/Documents/MODELS/mlx-community/Mistral-Small-3.2-24B-Instruct-2506-8bit

## Create a clean conda environment

Use a conda environment defined in a YAML file. Do not reuse the base.

environment\_mlx.yml:

> name: env\_mlx
>
> channels:
>
>   - conda-forge
>
> dependencies:
>
>   - python=3.11
>
>   - pip
>
>   - pip:
>
>       - mlx-lm

## Create and activate the environment:

> conda env create -f environment\_mlx.yml
>
> conda activate env\_mlx

## Install MLX native binaries

Inside the activated environment, install MLX explicitly so the Metal backend is available:

pip install -U mlx

Verify MLX is correctly linked:

python -c "import mlx.core as mx; print(mx)"

You should see a native .so module load without errors.

## Run the model

Use the MLX CLI directly:

> mlx\_lm.generate \
>
>   --model ~/Documents/MODELS/mlx-community/Mistral-Small-3.2-24B-Instruct-2506-8bit \
>
>   --prompt "What LLM model are you?"

On first run, expect a short Metal warm-up. A successful output confirms that the setup is complete.

==========

I'm a Large Language Model trained by Mistral AI.

==========

Prompt: 8 tokens, 14.191 tokens-per-sec

Generation: 13 tokens, 15.885 tokens-per-sec

Peak memory: 25.096 GB
