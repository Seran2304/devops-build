pipeline {
    agent any

    environment {
        DEV_IMAGE = "seran2304/dev"
        PROD_IMAGE = "seran2304/prod"
    }

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t $DEV_IMAGE:latest .'
            }
        }

        stage('Push Dev') {
            when { branch 'dev' }
            steps {
                sh 'docker push $DEV_IMAGE:latest'
            }
        }

        stage('Push Prod') {
            when { branch 'master' }
            steps {
                sh 'docker tag $DEV_IMAGE:latest $PROD_IMAGE:latest'
                sh 'docker push $PROD_IMAGE:latest'
            }
        }

        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}
