pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh "git fetch origin main"
                sh "git fetch origin b1"
                script {
                    def gitDiff = sh(script: "git diff --name-only origin/b1...origin/main", returnStdout: true).trim()
                    for (int i = 0; i < gitDiff.size(); ++i) {
                        echo "File ${gitDiff[i]} changed"
                    }
                }
                echo "hmm"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
