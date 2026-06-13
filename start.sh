#!/bin/bash

# 自动识别系统，加载conda hook，规避conda init报错
if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
    PY_EXE="/Users/$USER/miniconda3/envs/ai_study/bin/python"
else
    # Linux/WSL/线上真实服务器
    PY_EXE="/home/$USER/miniconda3/envs/ai_study/bin/python"
fi

# 校验解释器是否存在
if [ ! -x "$PY_EXE" ]; then
    echo "错误：Python解释器不存在或无执行权限：$PY_EXE"
    exit 1
fi

$PY_EXE main.py
