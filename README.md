# Azure Dockerfile React

A better starter version than [azure-docker-react-starter](https://github.com/ray-chunkit-chung/azure-docker-react-starter)

# Getting Started

coming soon...

# Current Stack

 - src on github
 - docker desktop x vscode
 - build using Dockerfile
 - auto test and build by circleCI
 - build to dockerhub
 - azure app service auto deploy triggered by latest build on dockerhub

# Experiment Journey

## Setup Test

Read this to setip test

https://medium.com/geekculture/how-to-add-docker-to-create-react-app-cra-run-unit-tests-439b3b25bd2c


## Yarn with circleci
https://circleci.com/docs/2.0/yarn/


## Jenkins
 - https://hub.docker.com/r/jenkins/jenkins
 - https://github.com/jenkinsci/docker/blob/master/README.md
 - https://qiita.com/4_mio_11/items/446a12ffd38dfcac9e25


Image
```
docker pull jenkins/jenkins:lts-jdk11
```

App
```
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11
```

Jenkins look really promising. For the moment, CircleCI is successful, but I will definitely create a Jenkins version.

## Docker Desktop

Spinning up the dev env with VSCode and Docker desktop has been very smooth. Now connecting it with Jenkins docker image

Docker Desktop x VSCode is very good. Successfully encapsulate all the things I need. 

## Azure DevOps
Azure DevOps keeps throwing me this error.

I gave up finally.

GitHub Could not create service hooks subscription Unable to configure a service on the selected GitHub repository. GitHub returned the error 'Resource not accessible by integration

https://stackoverflow.com/questions/62477448/github-could-not-create-service-hooks-subscription-unable-to-configure-a-service


## CirlceCI

Optimizing config.yml
https://transcend.io/blog/accelerate-your-deploys-with-these-5-circleci-optimizations/


Read a lot how to kick start
- https://circleci.com/docker/
- https://circleci.com/blog/build-cicd-piplines-using-docker/
- https://circleci.com/docs/2.0/concepts/
- https://circleci.com/docs/2.0/building-docker-images/

Can't believe it is so non-intuitive...

And it is getting more and more difficult....
https://support.circleci.com/hc/en-us/articles/115015849028-Docker-Daemon-Not-Available?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NvdW50X2lkIjo4MjgyMDksInVzZXJfaWQiOm51bGwsInRpY2tldF9pZCI6MTA1MzY5LCJkZWZsZWN0aW9uX2lkIjoxMjYwOTU1MzA4MzkwLCJhcnRpY2xlcyI6WzM2MDAwMDIxNzg2OCwxMTUwMTU4NDkwMjgsMzYwMDU4MDk1NDcxXSwidG9rZW4iOm51bGwsImV4cCI6MTY0ODc5MTY2N30.qahx35gc-zWYzYINtkoK-WQOGk7j0gx5we6aw9lJMbY

Finally solved this issue, the answer is we need to pass user auth info as env var. They also have "contexts" for auth sharing. Good

## Docker Image

Docker best practice
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
- https://mherman.org/blog/dockerizing-a-react-app/
- https://github.com/sanjaysaini2000/react-todo-app/blob/master/Dockerfile

Not much issue here. 


## Reference

Sorry I forgot who I pull the original code from. I visited random tutorials, e.g.,
 - https://github.com/sanjaysaini2000/react-todo-app
 - https://github.com/facebook/create-react-app

Kindly let me know if I used your code without reference. I will add it back.

# Hogehoge

- Add this line to test auto build in docker hub v2
- Add this line to test auto deploy to azure
- Add this line to test build trigger for circleci
- What happens if we use docker desktop dev env?
- Let's remove all circleci and azure devops depenedenc as I am trying docker desktop
- Add back circleci and remove github workflow

- Some debates between npm and yarn
    - https://tomiko0404.hatenablog.com/entry/npm-yarn-install
    - https://www.section.io/engineering-education/npm-vs-yarn-which-one-to-choose:~:text=One%20of%20the%20main%20differenceand%20install%20multiple%20packages%20simultaneously.

