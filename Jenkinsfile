pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh """
                    UI="ui"
                    files=`git diff b1..master --name-only`
                    echo ${files}
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
