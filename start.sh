#!/bin/bash

# 自动识别系统，加载conda hook，规避conda init报错（线上标准写法）
if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
    eval "$(/Users/$USER/miniconda3/bin/conda shell.bash hook)"
else
    # Linux/WSL/线上真实服务器
    eval "$(/home/$USER/miniconda3/bin/conda shell.bash hook)"
fi

# 激活虚拟环境
conda activate ai_study

# 启动业务程序
python main.py
