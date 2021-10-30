docker build -t dbtools .
docker stop dbtools && true
docker rm dbtools && true
docker run --name dbtools -p 8102:80 -d dbtools
