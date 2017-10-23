if [ $1 = "run" ]; then
	cd RESTful-api	
	mvn spring-boot:run
	break

fi

#mvn clean install
cd RESTful-api

if [ $1 = "test" ]; then
   mvn spring-boot:run -Drun.profiles=test

elif [ $1 = "dev" ]; then
   mvn spring-boot:run -Drun.profiles=dev

elif [ $1 = "prod" ]; then
   #mvn spring-boot:run -Drun.profiles=prod
   scp target/AjudeMais-RESTful-api-1.0-IT06.jar ajudemais@165.227.200.97:/tmp/


else
  mvn spring-boot:run
fi

