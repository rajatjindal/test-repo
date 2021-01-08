pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh "git fetch --no-tags origin '+refs/heads/b1:refs/remotes/origin/master'"
                def gitDiff = sh(script: "git diff --name-only origin/b1...origin/master", returnStdout: true).trim()
                echo "hmm"
                echo gitDiff
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
