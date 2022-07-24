# Solution design implementation!

The concept choose to be implemented is part of the CI/CD. It is represented by Jenkins, Sonarqube and Nexus and also some small changes in the original pom.xml to build docker images.


# The scope
The idea is to simulate the CI flow, fetching the commit from repository, running jenkins pipeline to build, validate (sonarqube), test and publish the packages for product-service.
Docker containers will be created to simulate all the mentioned steps.

## How to start

```bash
# Execute docker compose
docker-compose -f docker-compose-ci.yml up
```

## Which services will be running

As mentioned before, the below services will be started
``` bash
Jenkins: http://localhost:8080
Sonarqube: http://localhost:9000
Nexus: http://localhost:8081
```

## How to execute jenkins pipeline

When all containers are started, you can follow the below steps

1. Access jenkins on http://localhost:8080
2. Login using admin as username and password
3. Enter product-manager job
4. Click on *build now*
5. The steps that will be execute are
    * Build
    * Sonar validation 
    * Tests
    * Publish to maven repository
6. After that you can check the outcome first in sonar then on nexus
7. Access sonarqube on http://localhost:9000
8. Login using admin as username and password
9. Check the project result
10. Access nexus on http://localhost:8081
11. Access using admin as username and admin123 as password
12. Check the snapshots respository


