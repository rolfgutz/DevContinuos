pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Test') {
            steps {
                sh 'echo Test'
            }
        }
        stage('Deploy') {
            steps {
                sh './build_image.sh'
            }
        }
    }
}
