docker build -t amolde/nginx-reverse-proxy .

docker login
docker push amolde/nginx-reverse-proxy

# docker stop mynginx3
# docker rm mynginx3
# docker run --name mynginx3 -P -e "PROXY0=9093|server3" -e "TOTAL_PROXIES=1" amolde/nginx-reverse-proxy 