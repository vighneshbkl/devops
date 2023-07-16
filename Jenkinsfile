pipeline {
agent any
tools {
    maven 'maven'
    docker 'docker'
}
stages {
    stage("Cleanup Workspace"){
            steps{
                cleanWs()
            }
        }

    stage('Getting the project from GIT') {
            steps{
                echo 'Pulling..';
                git branch: 'main', url: 'https://github.com/vighneshbkl/devops';
            }
        }
        
    stage('Cleaning the project') {
            steps{
                echo 'cleaning project ...'
                sh 'mvn clean'
            }
        }
        
    stage('Artifact Construction') {
            steps{
                echo "artificat contruction"
                sh 'mvn clean package'
            }
        }

    stage('Test App') {
            steps{
                echo "Testing App"
                sh 'mvn test'
            }
        }

    stage('Build Docker File') {
            steps{
                script{
                    sh 'docker build -t vighneshacharya/devops .'
                }
            }
        }
    }