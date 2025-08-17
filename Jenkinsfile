pipeline {
    agent any
     docker {
      image 'docker:latest'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }

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
