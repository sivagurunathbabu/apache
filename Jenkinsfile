pipeline {
    agent any

	environment {
        DOCKER_COMPOSE_PATH = '/usr/local/bin/docker-compose'
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
                    def dockerComposeCmd = "docker-compose"
                    if (fileExists(DOCKER_COMPOSE_PATH)) {
						echo 'docker compose exists'
                        dockerComposeCmd = DOCKER_COMPOSE_PATH
                    }

                    // Run Docker Compose commands
                    sh "${dockerComposeCmd} up -d"
                }
            }
        }
    }
}
