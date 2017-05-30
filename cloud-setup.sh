#!/bin/bash


cd /cloud
git clone https://github.com/spring-cloud/spring-cloud-security
cd spring-cloud-security
mvn install -P spring

/bin/bash
