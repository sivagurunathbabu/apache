pipeline {
    agent any

	environment {
        DOCKER_COMPOSE_PATH = '/usr/local/bin/docker-compose'
    }
	
    stages {
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
                        dockerComposeCmd = DOCKER_COMPOSE_PATH
                    }

                    // Run Docker Compose commands
                    sh "${dockerComposeCmd} up -d"
                }
            }
        }
    }
}
