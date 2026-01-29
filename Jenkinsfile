pipeline {
    agent any
    stages {
        stage('Build Images') {
            steps {
                sh 'docker build -t custom-nginx:latest .'
                sh 'docker build -t my-site-content:latest -f Dockerfile.web .'
            }
        }
        stage('Deploy to Swarm') {
            steps {
                sh 'docker stack deploy -c docker-compose.yml my-web-stack'
            }
        }
    }
}
