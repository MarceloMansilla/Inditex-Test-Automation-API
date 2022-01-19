# Inditext-Test-Automation-API
Automation framework developed with Karate

## Why I chose
I chose Karate framework to develop the solution in order to push myself to learn a new tool in a short time and put it practice asap. Beside to incorporate knowledge and be ready for the challenge. Even no having kknowledge about the framework, I wanted to show my soft skill for self-learning, self-motivated, empowerment and engagement which are the value that represent me. 

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
