cp distribution/docker/Dockerfile .

sed -i 's~ARG DOWNLOAD_URL~~g' ./Dockerfile
sed -i 's~wget -q "${DOWNLOAD_URL}" -O dremio.tar.gz~wget -q "https://download.dremio.com/community-server/dremio-community-LATEST.tar.gz" -O dremio.tar.gz~g' ./Dockerfile


docker buildx build . --output type=docker,name=elestio4test/dremio:latest | docker load
