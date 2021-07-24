#!/usr/bin/env bash
mvn clean install
#have tomcat started on your system
cd "\Program Files (x86)\Google\Chrome\Application"
chrome "http://localhost:8080/mvnlab/product/search?q=Very%20Nice%20Shoes"
#bat '"\Program Files (x86)\Google\Chrome\Application\" chrome "http://localhost:8080/mvnlab/product/search?q=Very%20Nice%20Shoes"'