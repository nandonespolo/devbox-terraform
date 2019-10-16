pipeline {
    // instructs Jenkins to allocate an executor and workspace for the Pipeline  
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the docker image'
                sh 'sudo make build'
            }
        }
        stage('Start') {
            steps {
                echo 'Starting the container'
                sh 'sudo docker rm -f devbox > /dev/null 2>&1'
                sh 'sudo make start'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'sudo make apply'
            }
        }
        stage('Clean') {
            steps {
                echo 'Removing the container and cleaning'
                sh 'sudo make clean'
            }
        }
    }
}