pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh "git fetch --no-tags origin '+refs/heads/b1:refs/remotes/origin/main'"
                //def gitDiff = sh(script: "git diff --name-only origin/b1...origin/main", returnStdout: true).trim()
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
