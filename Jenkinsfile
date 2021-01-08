pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh """
                    UI="ui"
                    for file in $(git diff b1..master --name-only); do
                        if [[ $file == ${UI}* ]]; then
                            echo "ui change"
                        fi
                    done
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
