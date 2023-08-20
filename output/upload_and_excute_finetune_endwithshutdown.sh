#!/bin/bash

# 激活conda环境
__conda_setup="$('/root/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/root/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/root/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/root/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda activate finetune
# 同时执行jupyter命令和上传文件
jupyter nbconvert --to notebook --execute /root/autodl-tmp/finetune/llama/llama-recipes/quickstart.ipynb --output=/root/autodl-tmp/finetune/output/finetune_llama2_output.ipynb &

# bypy upload /root/autodl-tmp/finetune/llama2_huggingface_format_model.tar &

# 等待所有后台进程完成
wait

# 关机
shutdown -h now
