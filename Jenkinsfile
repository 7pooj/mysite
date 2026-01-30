pipeline {
    agent any
    stages {
        stage('Build Images') {
            steps {
                // Building the Proxy
                sh 'docker build -t custom-nginx:latest .'
                // Building the Web Content from your special Dockerfile.web
                sh 'docker build -t my-site-content:latest -f Dockerfile.web .'
            }
        }
        stage('Deploy to Swarm') {
            steps {
                // 1. Update the stack definition
                sh 'docker stack deploy -c docker-compose.yml my-web-stack'
                
                // 2. THE FIX: Force the service to pull the NEWLY built 'latest' image
                sh 'docker service update --force my-web-stack_web-app'
            }
        }
    }
}
