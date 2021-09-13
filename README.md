# Introduction
Repo contains Dockerfile which could be used for creating new SonarQube image base on existing one. The idea is to replace application.jar file to your own (patched).

# Prepare jar file
Firstly you need to modify files e.g. class CeConfigurationImpl.java
To increase CE workers you need modify properties: **DEFAULT_WORKER_THREAD_COUNT** and **DEFAULT_WORKER_COUNT**

Once you have ready solution you have compile by command:
*./gradlew -DbuildNumber=43852 -Prelease build*

Notice: Build number could be chanhed depend of version

Compiled jar file will be under location *sonar-application/build/libs/* then copy it to *Dockerfile* location.

# Build new image
Before build update base image in *Dockerfile* to have valid version then build new docker image.
