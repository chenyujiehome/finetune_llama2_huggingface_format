# llama2微调指南
<a href="https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/RAEDME_english.md">
    <img src="https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/img/united-kingdom.png" alt="united-kingdom" height="15" /> 
    English-Version
</a>

## 微调流程

### 1.配置环境

```bash
pip install -r requirements.txt
#pip安装环境
conda -n finetune python=3.11
#conda 创建环境
pip install git+https://github.com/huggingface/transformers
pip install -e ./llama
#安装model
```

### 2.创建huggingface格式的llama2文件

```
python convert_llama_weights_to_hf.py --input_dir ./llama/llama-2-7b --model_size 7B --output_dir models_hf/7B
```

### 3.在huggingface格式微调llama2模型

详见[微调ipynb文件](https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/output/finetune_llama2_output.ipynb)

### 4.运行你的微调模型

详见[运行ipynb文件](https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/inference_on_finetune_model.ipynb)

## 大文件

- 大文件(bin文件,pth文件,以及llama2 原始格式文件，llama2 huggingface格式文件)放在百度网盘: https://pan.baidu.com/s/1d3lVnNO5iI2iCRBR6i_kdQ?pwd=styw 提取码: styw 
- 大文件存放位置参见 [tree.txt](https://github.com/chenyujiehome/finetune_llama2_huggingface_format/blob/master/tree.txt) 