pipeline {
    agent {
        docker {
            image 'docker:24-dind'   // Image có sẵn docker CLI
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
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
               sh 'docker build -t todoimg .'
            }
        }        
    }
}
