# Maven Jenkins Lab

- install tomcat

- run tomcat eg as service

- call in browser: "http://localhost:8080/mvnlab/product/search?q=Very%20Nice%20Shoes"

- Copy downloaded jenkins.jar to ../<your-dir>

- run via 'java -jar ../jenkins.jar' use initial Jenkins pw

- https://www.fourkitchens.com/blog/article/trigger-jenkins-builds-pushing-github/

- https://github.zhaw.ch/raw/bamc/SWEN2-Lab-Continous-Delivery/master/Jenkinsfile

- Stored in C:\Users\peter\.jenkins\workspace\<Jenkins JobName>

- have fun with Jenkins right now!

- my repo url ist different, needs a test, it works!
  
 # add a webhook to the repo
- http://46.101.142.166:9999/git/notifyCommit?url=git@github.zhaw.ch:stroepet/swen-2-lab-maven-jenkins.git
  - IP to Jenkins Build server:9999
  - /swen-2-lab-maven-jenkins.git instead take repo name!
  
  ![image](https://user-images.githubusercontent.com/559492/126872605-5cd8055f-4d58-4b07-9513-f4db28be0b54.png)
