docker run --rm -v $(pwd)/dist:/build/dist -v $(pwd)/alpine.sh:/alpine.sh -it alpine:3.5 sh /alpine.sh
docker build -t wsc1958/zt-client-final .
docker container create --device=/dev/net/tun --net=host  --cap-add=NET_ADMIN --cap-add=SYS_ADMIN  --name zt-client-final -v /var/lib/zerotier-one:/var/lib/zerotier-one wsc1958/zt-client-final
