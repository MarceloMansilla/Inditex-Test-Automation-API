# Inditext-Test-Automation-API
Automation framework developed with Karate

## Pre-requirement
* VS Code
* Docker
* Node v12.16.3
* Kali Linux - Ettercap

## Run
To run test by annotation
```
mvn test "-Dkarate.options=--tags @pets"
```

Where the annotations are
* pets
* user
* regression

## Docker
To run the test by using Docker, use the following command
```docker
docker-compose up --build
```

## Maven
To run the test by using Maven, use the following command
```maven
mvn clean test
```
