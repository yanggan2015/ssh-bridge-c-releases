ssh_bridge_manager - 终端共享管理工具（binary only）
===================================================

This folder is a binary distribution. Source code is closed-source / private.

详细中文使用说明请打开同目录：

  使用说明.txt
  （或 USAGE.zh-CN.txt，内容相同）

1. Config
   - 首次运行可自动在工具目录生成空 config.json，也可复制 config.json.example
   - Or use: %USERPROFILE%\.ssh-bridge\config.json

2. Start
   - run.bat  -> starts ssh_bridge_manager.exe (backend / HTTP)
   - Optional desktop UI: double-click ssh_bridge_desktop.exe
   - CLI:
       ssh_bridge_manager.exe
       ssh_bridge_manager.exe help
       ssh_bridge_manager.exe version

3. WebUI
   http://127.0.0.1:18081/
   http://127.0.0.1:18081/help
   Desktop shell embeds the same page via WebView2 (Windows).

Config search (when -c omitted):
  1) .\config.json
  2) 工具目录（exe 旁）config.json
  3) %USERPROFILE%\.ssh-bridge\config.json
  若都不存在：在工具目录自动创建空配置

Desktop shell notes
  - ssh_bridge_desktop.exe 会启动同目录 ssh_bridge_manager.exe 并嵌入网页
  - 需要已安装 Microsoft Edge WebView2 Runtime（Win11 通常自带）
  - 下载: https://developer.microsoft.com/microsoft-edge/webview2/

License / expiry
  Each build enables API for 180 days (~6 months) from compile time.
  After expiry the process can still start, but HTTP API is disabled until upgrade.
  Download new Windows builds:
    https://github.com/yanggan2015/ssh-bridge-c-releases/releases
  Contact: yanggan2015@foxmail.com

Keep exe and sibling DLLs together.
See VERSION.txt for stamp and expiry.
See 使用说明.txt for full user guide (config, Web UI, HTTP API, SSH, FAQ).
