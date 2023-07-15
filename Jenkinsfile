pipeline {
    agent any
    stages {
    stage('Getting the project from GIT') {
            steps {
               echo 'Pulling..';
                git branch: 'main',
                url: 'https://github.com/vighneshbkl/devops';
            }
        }
        
    stage('Cleaning the project') {
            steps {
                echo 'cleaning project ...'
                sh 'mvn clean'
            }
        }
        
    stage('Artifact Construction') {
            steps {
                echo "artificat contruction"
                sh 'mvn package'
            }
        }
    }
}
