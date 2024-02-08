pipeline {
   
   agent any
   	
	
   environment {
        PATH = "$PATH:/usr/local/bin"
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
                    sh '/usr/bin/docker --version'
                    sh '/usr/local/bin/docker-compose --version'
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
