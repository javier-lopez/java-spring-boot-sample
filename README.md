# java-spring-boot sample web app

This example is a simulation of a Task Manager using Spring boot and CI with Concourse, original: https://github.com/gabrielfeitosa/ci-spring-boot

## Technologies

* [Java](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Maven](https://maven.apache.org/)
* [Spring Boot](http://projects.spring.io/spring-boot/)
* [AngularJS](https://angularjs.org/)
* [Concourse](https://concourse.ci/)
* [Docker](http://docker.com/)

## Configuration

> You need to have installed Java and Maven

##### Spring Boot

  For the development profile you do not need to configure anything. In this profile you will use a h2 database.

  If you want to use a production profile, you need to change the database configurations into __application-prod.properties__. In my example I use a environment variable __${DATABASE_URL}__ to configure the database url.

##### Concourse

  TODO

## Run

##### Dev Profile

```sh
$ mvn spring-boot:run
```

##### Production Profile

```sh
$ mvn spring-boot:run -Dspring.profiles.active=prod
```

## Run with Docker Command Line

```sh
$ mvn clean package
```

```sh
$ docker build -t mytask .
```

```sh
$ docker run -it -p 8080:8080 --name mytask-container mytask
```

## Run with docker-maven-plugin

```sh
$  mvn clean package docker:build --batch-mode release:update-versions
```

```sh
$ docker run -it -p 8080:8080 --name mytask-container mytask
```

License
----

MIT
