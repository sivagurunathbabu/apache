pipeline {
   
   agent {
        docker {
            image 'docker/compose:latest' // Use an image that includes Docker Compose
        }
    }

	
	
	
	
    stages {
	
		stage('Print PATH') {
            steps {
                script {
                    sh 'echo $PATH'
                }
            }
        }
		stage('Print Docker Compose Version') {
            steps {
                script {
                    sh 'docker --version'
                    sh 'docker-compose --version'
                }
            }
        }
		
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Deploy') {
            steps {
                script {
                    

                    // Run Docker Compose commands
                    sh "docker-compose up -d"
                }
            }
        }
    }
}
