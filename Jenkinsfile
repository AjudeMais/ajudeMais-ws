node {
   stage('Preparation') {
   	git 'https://github.com/AjudeMais/ajudeMais-ws.git'

   }
   stage('Build Modules') {
   	sh "mvn clean install"
        dir RESTful-api
   }
   stage('Build RESTful API') {
        sh "mvn spring-boot:run -Drun.profiles=prod"
   }
   stage('Tests') {
      sh "mvn spring-boot:run -Drun.profiles=test"
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
}
