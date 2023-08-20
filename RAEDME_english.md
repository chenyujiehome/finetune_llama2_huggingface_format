# llama2 Fine-tuning Guide

<a href="https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/README.md">

<img src="https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/img/china.png" alt="china" height="12" />中文版本</a>

## Fine-tuning Process

### 1. Configure Environment

```bash

pip install -r requirements.txt

# Install required packages

conda -n finetune python=3.11

# Create conda environment

pip install git+https://github.com/huggingface/transformers

pip install -e ./llama

# Install model

```

### 2. Create Hugging Face Format for llama2

```bash

python convert_llama_weights_to_hf.py --input_dir ./llama/llama-2-7b --model_size 7B --output_dir models_hf/7B

```

### 3. Fine-tune llama2 Model in Hugging Face Format

See [Fine-tuning ipynb file](https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/output/finetune_llama2_output.ipynb)

### 4. Run Your Fine-tuned Model

See [Run ipynb file](https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/inference_on_finetune_model.ipynb)

## Large Files

- Large files (bin files, pth files, and llama2 original format files, llama2 Hugging Face format files) are stored on Baidu Netdisk: https://pan.baidu.com/s/1d3lVnNO5iI2iCRBR6i_kdQ?pwd=styw Password: styw

- Refer to [tree.txt](https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/tree.txt) for the location of large files.