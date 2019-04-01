pipeline {
    agent { node {label 'jnlp_agent'} }
    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']],
     userRemoteConfigs: [[url: 'https://github.com/kondoumh/sb-sample-service.git']]])
            }
        }
        stage('package') {
            steps {
                echo 'package'
                sh './mvnw package'
            }
        }
        stage('build and run container') {
            steps {
                echo 'build and run container'
                sh 'docker-compose up -d'
                sleep 60
            }
        }
        stage('container integration test') {
            steps {
                echo 'conteiner integration test'
                sh 'curl -X POST "http://localhost:18888/api/user/" -H "accept: */*" -H "Content-Type: application/json" -d "{ \"id\": 1, \"name\": \"Mike\"}"'
                sh 'curl -X GET "http://localhost:18888/api/usr/1" -H "accept: */*"'
            }
        }
        post {
            always {
                echo 'shutdown'
                sh 'docker-compose down'
            }
        }
    }
}