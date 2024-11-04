pipeline {
    // Define que o pipeline pode rodar em qualquer agente disponível no Jenkins
    agent any

    // Define os estágios do pipeline
    stages {

        // Estágio de "Checkout" para obter o código do repositório
        stage('Checkout') {
            steps {
                // Comando para realizar o checkout do repositório configurado no Jenkins
                checkout scm
            }
        }

        // Estágio de "Test" para rodar testes ou outras verificações
        stage('Test') {
            steps {
                // Comando de shell para exibir a mensagem "Test" no console
                sh 'echo Test'
            }
        }

        // Estágio de "Deploy" para realizar o build e/ou deployment do projeto
        stage('Deploy') {
            steps {
                // Executa o script de shell 'build_image.sh' que deve estar no diretório raiz do projeto
                sh './build_image.sh'
            }
        }
    }
}
