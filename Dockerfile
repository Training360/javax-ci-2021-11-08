FROM azul/zulu-openjdk
WORKDIR /opt/app
COPY build/libs/employees-0.0.1-SNAPSHOT.jar employees.jar
CMD ["java", "-jar", "employees.jar"]