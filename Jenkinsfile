pipeline {
    agent any

    tools {
        nodejs "Nodejs"
    }

    stages {

        stage ('checkout') {
            steps {
                checkout scm
            }
        }

        stage('Test') {
            steps {
                sh 'sudo apt install npm'
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }      
    }
}
