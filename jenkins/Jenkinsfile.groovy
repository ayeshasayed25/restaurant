pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ayeshasayed25/restaurant.git'
            }
        }

        stage('Build Docker') {
            steps {
                sh 'docker build -t mughlai-app:latest ./docker/app'
            }
        }

        stage('Push Docker') {
            steps {
                sh 'docker tag mughlai-app:latest <DOCKER_REPO>'
                sh 'docker push <DOCKER_REPO>'
            }
        }

        stage('Deploy to K8s') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}
