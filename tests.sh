echo "Remove old containers"
docker-compose down -v

echo "Build and start containers"
docker-compose up --build -d

echo "Attach and start test process"
docker container exec -it frontend_react-app_1 sh -c 'npm run test'