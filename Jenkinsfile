pipeline {
    agent any

	
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
                    sh 'sudo docker --version'
                    sh 'sudo docker-compose --version'
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
