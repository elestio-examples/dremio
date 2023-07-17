cp distribution/docker/Dockerfile .
docker buildx build . --output type=docker,name=elestio4test/dremio-oss:latest | docker load