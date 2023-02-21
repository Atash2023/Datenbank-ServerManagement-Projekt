FROM openjdk:17

WORKDIR /usr/src/myapp

COPY . /usr/src/myapp/

EXPOSE 8080

#ENTRYPOINT ["java", "-jar", "zm_webapp_backend-0.0.1-SNAPSHOT.jar"]

CMD java -jar zm_webapp_backend-0.0.1-SNAPSHOT.jar --spring.data.mongodb.host=${MONGO_URL} --spring.data.mongodb.port=${MONGO_PORT}