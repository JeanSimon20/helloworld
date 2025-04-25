FROM openjdk:24-ea-17-jdk-slim

# 1. Crea un grupo y usuario "app" sin privilegios
RUN addgroup --system appgroup \
 && adduser --system --ingroup appgroup appuser

# 2. Define un directorio de trabajo y copia allí el JAR
WORKDIR /home/appuser
COPY ./target/demo-0.0.1-SNAPSHOT.jar app.jar

# 3. Expón el puerto y cambia el usuario por defecto
EXPOSE 8080
USER appuser

# 4. Arranca la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
