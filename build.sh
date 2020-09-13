git clone https://github.com/alexshavlovsky/primeng-chat-client.git
git clone https://github.com/alexshavlovsky/spring-mongo-reactive-chat.git
cd ./spring-mongo-reactive-chat || exit
mvn clean package
cd ..
docker-compose up --build
