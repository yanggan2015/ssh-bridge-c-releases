# Skill: HTTP 上传到 share

大文件（推荐）：
```bash
bash /mnt/share/tools/share_put.sh http://HOST:18071 ./file.bin ok3562/file.bin
```
小文件：
```bash
curl -X POST --data-binary @./uImage "http://HOST:18071/tftp/upload?path=ok3562/uImage"
# 分片：&offset=字节
```
校验：`curl -s "http://HOST:18071/tftp/md5?path=ok3562/uImage"`  
网页：`GET /share`；终端右键菜单可上传到板目录 / common（带进度条）。
