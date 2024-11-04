pipeline {
    agent any

    stage {
        steps{
            checkout scm
        }
    }
    stage ('test'){
        steps{
            sh 'echo Test'
        }
    }
    stage('Deploy'){
        steps{
            sh './build_image.sh'
        }
    }
}