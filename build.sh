git clone https://github.com/alexshavlovsky/primeng-chat-client.git
git clone https://github.com/alexshavlovsky/spring-mongo-reactive-chat.git
rm ./spring-mongo-reactive-chat/src/main/resources/nativebin/ffmpeg-amd64.exe
rm ./spring-mongo-reactive-chat/src/main/resources/nativebin/ffmpeg-x86_64-osx
cd ./spring-mongo-reactive-chat || exit
mvn clean package
cd ..
docker-compose up --build
