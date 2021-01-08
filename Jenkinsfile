pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh "git fetch origin main"
                sh "git fetch origin b1"
                def gitDiff = sh(script: "git diff --name-only origin/b1...origin/main", returnStdout: true).trim()
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
