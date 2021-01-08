pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh """
                    UI="ui"
                    echo "${UI}"
                    FILES=`git diff b1..master --name-only`
                    echo "${FILES}"
                """
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
