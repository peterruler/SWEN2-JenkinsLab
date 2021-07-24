#!/bin/bash
java -jar ~/Sites/jenkins.war --httpPort=9999
open -a "Google Chrome" "http://localhost:9999"
