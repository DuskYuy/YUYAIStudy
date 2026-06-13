# YUYAIStudy — 合同分析Agent
## 项目定位
面向律师行业的合同智能分析Agent，实现合同条款解析、风险识别、要点提取。

## 开发环境规范
### 双端统一配置
1. 环境管理工具：Miniconda
2. 虚拟环境名：ai_study
3. Python版本：3.10.20
4. 开发设备：macOS + WSL Ubuntu 26.04

### 环境部署命令
```bash
# 创建虚拟环境
conda create -n ai_study python=3.10.20 -y
# 激活环境
conda activate ai_study
# 安装依赖
pip install -r requirements.txt
