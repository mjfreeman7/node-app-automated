docker build --tag webapp:$BUILD_NUMBER .
docker stop webapp && docker rm webapp
docker run --name webapp -p 1337:1337 webapp:$BUILD_NUMBER node /var/www/index.js &
