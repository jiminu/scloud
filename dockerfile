FROM openjdk:17-jdk-slim

RUN apt-get update \
    && apt install -y git

RUN git clone https://github.com/jiminu/eureka-serv.git /app

WORKDIR /app
CMD ["./gradlew", "bootRun"]
