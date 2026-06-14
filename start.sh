#!/bin/bash
# 自动加载conda初始化脚本，兼容交互式、定时任务、systemd非交互式场景
load_conda(){
    # 优先识别全局安装路径
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ];then
        source /opt/miniconda3/etc/profile.d/conda.sh
    elif [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ];then
        source "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        echo "错误：未检测到Miniconda安装，请检查环境"
        exit 1
    fi
}

load_conda

# 动态读取指定虚拟环境真实路径
ENV_PATH=$(conda env list | awk '/^ai_common_py310 /{print $2}')
PY_BIN="${ENV_PATH}/bin/python"

# 权限&文件存在性校验
if [ ! -x "${PY_BIN}" ];then
    echo "错误：Python解释器不存在或无执行权限：${PY_BIN}"
    exit 1
fi

# 启动统一程序入口
exec "${PY_BIN}" main.py
