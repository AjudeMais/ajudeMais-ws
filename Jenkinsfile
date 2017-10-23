node {
   stage('Preparation') {
   	git 'https://github.com/AjudeMais/ajudeMais-ws.git'

   }

   stage('Build') {
   	sh "mvn clean install"
   }

   stage('Tests') {
      	junit '**/target/surefire-reports/TEST-*.xml'
      	archive 'target/*.jar'
   }

   stage('Deploy') {
      	sh "ssh ajudemais@165.227.200.97 rm -rf /var/www/ajudemais_deploy/"
	sh "ssh ajudemais@165.227.200.97 mkdir -p /var/www/ajudemais_deploy"
	sh "scp -r target/*.jar ssh ajudemais@165.227.200.97:/var/www/ajudemais_deploy/"
   }

}
