# simsrv
simsrv
docker run --name simsrv -d -p 1023:23 registry.cn-hangzhou.aliyuncs.com/dmcloudv2/simsrv:01600014


docker run --rm -ti \
  --name=ctop \
  -v /var/run/docker.sock:/var/run/docker.sock \
  quay.io/vektorlab/ctop:latest