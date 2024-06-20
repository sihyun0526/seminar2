pipeline {
    agent  {
        label 'dind-agent'
    }

    environment {
        GITHUB_CREDENTIALS = credentials('github-credentials')
        GITHUB_USER = "sihyun0526"
    }

    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/sihyun0526/seminar2.git'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def image = docker.build("ghcr.io/${env.GITHUB_USER}/seminar2:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://ghcr.io', 'github-credentials') {
                        def image = docker.image("ghcr.io/${env.GITHUB_USER}/seminar2:latest")
                        image.push()
                    }
                }
            }
        }
    }
}