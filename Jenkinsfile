pipeline {
 

    agent any
   	
    stages {
	
			
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Deploy') {
            steps {
                script {
                    

                    // Run Docker Compose commands
                   // sh "docker-compose up -d"
                }
            }
        }
    }
}
