# Spring Boot Microservices

## Services Overview

- Product Service
- Order Service
- Inventory Service
- Notification Service
- API Gateway using Spring Cloud Gateway MVC
- Shop Frontend using Angular 18

## Tech Stack

The technologies used in this project are:

- Spring Boot
- Angular
- Mongo DB
- MySQL
- Kafka
- Keycloak
- Grafana Stack (Prometheus, Grafana, Loki and Tempo)
- API Gateway using Spring Cloud Gateway MVC
- Kubernetes


## Application Architecture
![image](https://github.com/user-attachments/assets/d4ef38bd-8ae5-4cc7-9ac5-7a8e5ec3c969)

## How to run the frontend application

Run the following commands to start the frontend application

```shell
cd frontend
npm install
npm run start
```

Make sure you have the following installed on your machine:

- Java 21
- Docker

### create code of protocol buffer in the shared-proto project

Go into the module: shared-proto
```shell
mvn clean clean compile install -DskipTests
```

### Access the Keycloak Admin Console
To access the Keycloak admin console, the Keycloak service to your local machine, select the spring-microservices-realm, create a user with a password, and log in using the newly created user account.


### Access the Grafana Dashboards
To access the Grafana dashboards, you need to port-forward the grafana service to your local machine

