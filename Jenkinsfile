node {
   stage('Preparation') {
   	git 'https://github.com/AjudeMais/ajudeMais-ws.git'

   }

   stage('Build Modules') {
   	sh "mvn clean install"
        dir 'RESTful-api'
   }
   
   stage('Tests') {
      	junit '**/target/surefire-reports/TEST-*.xml'
      	archive 'target/*.jar'
   }

   stage('Deploy') {
       echo 'TODO'
   }
}
