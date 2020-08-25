### create container from cloned Docker Hub repo
docker run -u root -it --name BPNetCentOS -v /Users/:/host_system/ angelopelonero/bpnet_centos8 bash

### exec bash in created container
# docker exec -it BPNetCentOS bash
