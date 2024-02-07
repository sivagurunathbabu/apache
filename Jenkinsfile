pipeline {
    #agent any 
	agent {
        docker {
            image 'docker/compose:latest' // Use an image that includes Docker Compose
        }
    }

	
	
	 environment {
        // Specify the path to the Docker binary
        DOCKER_PATH = '/usr/bin/docker' // Update with the correct path
		DOCKER_COMPOSE_PATH = '/usr/local/bin/docker-compose'
        PATH = "$DOCKER_PATH:$DOCKER_COMPOSE_PATH:${env.PATH}"
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
