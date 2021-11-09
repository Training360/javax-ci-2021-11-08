# Labor 1

* Gradle 7.2 kicsomagolása a `C:\Java` könyvtárba
* A `C:\oktatas\hello-gradle` könyvtárba hozzatok létre egy `build.gradle` állományt
* A parancs: `C:\Java\gradle-7.2\bin\gradle hello

# Labor 2

* `git clone https://github.com/Training360/javax-ci-2021-11-08`
* `gradlew hello`

# Labor 3

* `gradlew hello` parancs már az `init` taskot is futtatja

# Labor 4

* Default task futtatása `gradlew hello` paranccsal

# Labor 5

* `git pull` - ez mindig kelleni fog a későbbiekben is
* `cd ..\hello-java-gradle`
* `gradlew build` - ellenőrizzétek, letrejön-e a jar fájl
* `java -cp hello-java-gradle.jar hello.Hello`

# Labor 6

* Váltás a `javax-ci-2021-11-08` könyvtárra
* `gradlew bootRun`
* `http://localhost:8080/swagger-ui.html`
* `http://localhost:8080/api/employees`

# Labor 7

* `gradlew dependencyUpdates`

# Labor 8

* Teszt lefedettség
* `gradlew build` 
* `\build\reports\jacoco\test\html\index.html` fájl tartalmát

# Labor 9

* Docker futtatása
* `net localgroup docker-users %USERDOMAIN%\%USERNAME% /add`
* `docker run hello-world`

# Labor 10

* MariaDB futtatása Docker konténerben

```shell
docker run -d -e MYSQL_DATABASE=employees -e MYSQL_USER=employees -e MYSQL_PASSWORD=employees -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 3306:3306 --name employees-mariadb mariadb
docker exec -it employees-mariadb mysql

connect employees
select * from employees;
```

# Labor 11

* Alkalmazás futtatása, csatlakozzon a MariaDB-hez

```shell
java -jar -Dspring.datasource.url=jdbc:mariadb://localhost/employees -Dspring.datasource.username=employees -Dspring.datasource.password=employees employees-0.0.1-SNAPSHOT.jar 
```

* `http://localhost:8080/swagger-ui.html`
* `select * from employees;`
