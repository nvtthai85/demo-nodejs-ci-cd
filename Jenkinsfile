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
                sh 'node -v'
                sh 'npm -v'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }      

        stage ('Build Image'){
            steps {
                sh 'docker build -t my-node-app:1.0 .'
            }
        }        
    }
}
