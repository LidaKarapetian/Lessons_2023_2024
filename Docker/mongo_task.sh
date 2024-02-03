docker pull mongo
docker pull mongo-express
mkdir mongohm
cd mongohm
pwd
docker run -d --name mongodb -p 27017:27017 -v /home/lida/mongohm:/data/db -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=pass mongo
docker run -d --name mongo_express --link mongodb:mongo -p 8081:8081 -e ME_CONFIG_MONGODB_SERVER=mongo -e ME_CONFIG_BASICAUTH_USERNAME=admin -e ME_CONFIG_BASICAUTH_PASSWORD=pass mongo-express
docker rm -f mongodb
docker run -d --name mongodb2 -p 27017:27017 -v /home/student/test_mongo:/data/db -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=pass mongo

