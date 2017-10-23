node {
   stage('Preparation') {
   	git 'https://github.com/AjudeMais/ajudeMais-ws.git'
   	sh "mvn clean install"
        sh "cd RESTful-api"
   }
   stage('Build') {
        mvn spring-boot:run -Drun.profiles=prod
   }
   stage('Tests') {
      sh "mvn spring-boot:run -Drun.profiles=test"
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
}
