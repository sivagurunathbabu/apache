pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout https://github.com/sivagurunathbabu/apache.git
            }
        }

        stage('Build and Deploy') {
            steps {
                script {
                    // Replace with your Docker Compose commands
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
