# Skill: ssh-bridge HTTP API 全表

BASE=`http://HOST:18071`

## 通道
- `GET /status` / `GET /status?board=`
- `GET /boards` · `POST /reload`
- `POST /command` 异步 · `POST /command_block` 阻塞（`timeout`）
- `POST /send_keys` · `POST /raw` · `POST /reconnect`
- `POST /log/clear` · `GET /log?board=&lines=` · `GET /log/download`
- `POST /lock` / `POST /unlock`（头 `X-Agent-Session`）
- `GET /actions?board=` · `POST /action`（`id`：reboot/power_on/…）
- `POST /serial/open|close|break` · `POST /channel/configure`

## share / TFTP / NFS
- `GET|POST /tftp/config` · `GET /tftp/status` · `GET /tftp/ips` · `GET /tftp/files`
- `POST /tftp/mkdir` · `POST /tftp/upload?path=&offset=` · `GET /tftp/download` · `GET /tftp/md5` · `POST /tftp/delete`
- `GET /share` · `POST /share/upload?dir=`（multipart）
- `GET|POST /nfs/config` · `GET /nfs/status`
- 大文件：`share/tools/share_put.sh $BASE 本地文件 板名/远程名 [chunk]`

## 其它
- `GET /help` Agent 手册 · `GET /relay` · `GET /tunnel` · `GET /config`
