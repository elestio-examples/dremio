cp distribution/docker/Dockerfile .
docker buildx build . --build-arg DOWNLOAD_URL=dremio-community-LATEST.tar.gz --output type=docker,name=elestio4test/dremio-oss:latest | docker load
