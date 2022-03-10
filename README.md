# Azure Docker React Web App
Production app link
 - https://web-app-starter-ray-chunkit-chung.azurewebsites.net/

Reveiw app link
 - https://web-app-review-ray-chunkit-chung.azurewebsites.net/

A simple previous version here
 - [azure-docker-react-starter](https://github.com/ray-chunkit-chung/azure-docker-react-starter)


# Getting Started
coming soon...


# Current Stack
 - src on github
 - dev env using docker desktop x vscode
 - auto test and build on circleCI by github push trigger
 - build to dockerhub. Separate [review image](https://hub.docker.com/repository/docker/raychung/azure-docker-react-advanced-dev) & [production image](https://hub.docker.com/repository/docker/raychung/azure-docker-react-advanced)
 - azure app service auto deploy triggered by latest build on dockerhub

# Experiment Journey
## Setup Test
Read this to setup jest test
https://medium.com/geekculture/how-to-add-docker-to-create-react-app-cra-run-unit-tests-439b3b25bd2c


## Yarn with circleci
https://circleci.com/docs/2.0/yarn/


## Docker Desktop

Docker Desktop x VSCode is very good. Successfully encapsulate all the things I need.

If you have unix socket issue, which prevent you from building or pulling dockerhub images, see this
Fix Docker VS Code Error: connect EACCES /var/run/docker.sock
 - https://www.davidhayden.me/blog/fix-docker-vs-code-error-connect-eacces-var-run-docker-sock
 - https://code.visualstudio.com/docs/containers/troubleshooting
 - https://docs.docker.com/engine/install/linux-postinstall/

If you still get the error, see this
 - https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket

```
sudo chmod 666 /var/run/docker.sock
```

## CirlceCI

Optimizing config.yml
 - https://circleci.com/docs/2.0/optimizations/
 - https://transcend.io/blog/accelerate-your-deploys-with-these-5-circleci-optimizations/
 - https://dev.classmethod.jp/articles/circleci-getting-started-jest/
 - https://circleci.com/docs/2.0/yarn/
 - https://qiita.com/kasaharu/items/bfeb2a41b9d636388531

Read a lot how to kick start
 - https://circleci.com/docs/2.0/workflows/
 - https://circleci.com/docker/
 - https://circleci.com/blog/build-cicd-piplines-using-docker/
 - https://circleci.com/docs/2.0/concepts/
 - https://circleci.com/docs/2.0/building-docker-images/
 - https://github.com/CircleCI-Public/circleci-demo-workflows/blob/parallel-jobs/.circleci/config.yml

Pass docker login with env var.

Use "contexts" to share auth in multiple projects.


## Docker Image

Docker best practice
 - https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
 - https://mherman.org/blog/dockerizing-a-react-app/
 - https://github.com/sanjaysaini2000/react-todo-app/blob/master/Dockerfile


## Jenkins
Current stack does not use Jenkins. But will definitely create a Jenkins version.

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

## Azure DevOps
Azure DevOps keeps throwing me this error.

GitHub Could not create service hooks subscription Unable to configure a service on the selected GitHub repository. GitHub returned the error 'Resource not accessible by integration

https://stackoverflow.com/questions/62477448/github-could-not-create-service-hooks-subscription-unable-to-configure-a-service


## Reference

I forgot who I pull the original code from. I visited random tutorials, e.g.,
 - https://github.com/sanjaysaini2000/react-todo-app
 - https://github.com/facebook/create-react-app

Kindly let me know if I used your code without reference. I will add it back.

