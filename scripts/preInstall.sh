#set env vars
#set -o allexport; source .env; set +o allexport;

mkdir -p ./dremio
chown -R 1000:1000 ./dremio

mkdir -p ./tmp
chown -R 1000:1000 ./tmp
