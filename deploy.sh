set -a; source .env: set +a;

cd stacky
git pull
docker-compose -f docker-compose.yml -f docker-compose.prod.yml down
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
cd ..

cd readler
git pull
docker-compose up -d
cd ..
