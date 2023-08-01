cp distribution/docker/Dockerfile .
docker buildx build . --build-arg DOWNLOAD_URL=https://download.dremio.com/community-server/dremio-community-LATEST.tar.gz --output type=docker,name=elestio4test/dremio:latest | docker load
