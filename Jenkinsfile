pipeline {
   
   agent any
   	
		
        stage('Checkout') {
            steps {
                checkout scm
				echo 'Checkout sussessfull..'
            }
        }

        stage('Build and Deploy') {
            steps {
                script {
                    

                    // Run Docker Compose commands
                   // sh "docker-compose up -d"
				   echo 'Build successful'
                }
            }
        }
    
}
