pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh "git fetch origin main"
                sh "git checkout main && git pull --rebase origin main"
                sh "git fetch origin b1"
                sh "git checkout b1 && git pull --rebase origin b1"
                
                script {
                    sh("git diff --name-only origin/b1...origin/main > diff.out")
                    sh("cat diff.out")
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
