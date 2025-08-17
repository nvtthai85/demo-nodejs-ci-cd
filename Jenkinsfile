pipeline {
    agent any
     
    tools {
        nodejs "Nodejs"
    }

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('thainvt_push') // Tạo credential trong Jenkins
        DOCKER_HUB_REPO = "nguyenthai26/my-node-app" // Thay bằng thông tin của bạn
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
               sh 'docker build -t ${DOCKER_HUB_REPO}:1.0 .'
            }
        }

         stage('Push to Docker Hub') {
            steps {
                script {
                    // Login vào Docker Hub
                    sh "echo ${DOCKER_HUB_CREDENTIALS_PSW} | docker login -u ${DOCKER_HUB_CREDENTIALS_USR} --password-stdin"
                    
                    // Push image
                    sh 'docker push ${DOCKER_HUB_REPO}:1.0'
                    
                    // Logout (optional)
                    sh 'docker logout'
                }
            }
        }
    }
}
