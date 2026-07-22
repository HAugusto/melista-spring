##################################
FROM eclipse-temurin:25-jdk-alpine as builder

WORKDIR /app

COPY pom.xml .
COPY .mvn .mvn
COPY mvnw .
COPY src src

RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

##################################
FROM eclipse-temurin:25-jre-alpine as runner

WORKDIR /app

COPY --from=builder --chown=user:group /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
