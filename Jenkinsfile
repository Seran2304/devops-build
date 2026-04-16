pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git branch: "${env.BRANCH_NAME}",
                url: 'https://github.com/seran2304/devops-build1.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'dev') {
                        sh 'docker build -t seran23/dev:latest .'
                    } else {
                        sh 'docker build -t seran23/prod:latest .'
                    }
                }
            }
        }

        stage('Push') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'dev') {
                        sh 'docker push seran23/dev:latest'
                    } else {
                        sh 'docker push seran23/prod:latest'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker rm -f react-app || true
                docker rm -f react-prod-app || true
                docker-compose up -d --build
                '''
            }
        }
    }
}
