# Skill: TFTP / NFS

```bash
curl -s http://HOST:18071/tftp/status
curl -s -X POST -H 'Content-Type: application/json' \
  -d '{"enable":true,"bind_ip":"192.168.137.1"}' http://HOST:18071/tftp/config
curl -s http://HOST:18071/nfs/status
curl -s -X POST -H 'Content-Type: application/json' -d '{"enable":true}' http://HOST:18071/nfs/config
```
板端：`mount -t nfs -o nolock,vers=3,tcp 192.168.137.1:/share /mnt/share`  
U-Boot：`setenv serverip 192.168.137.1; setenv ipaddr 192.168.137.100; ping 192.168.137.1`
