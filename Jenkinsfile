pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Prepare') {
            steps {
                sh 'chmod +x app.sh test.sh'
            }
        }

        stage('Run App') {
            steps {
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Package') {
            steps {
                sh 'tar -czf artifact.tar.gz app.sh test.sh Jenkinsfile'
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'artifact.tar.gz', fingerprint: true
        }
    }
}