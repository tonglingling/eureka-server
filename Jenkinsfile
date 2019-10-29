#!groovy
pipeline {
    agent none
    stages {
        stage('Checkout'){
            environment{
                REPOSITORY="https://github.com/tonglingling/eureka-server.git"
            }
            steps{
                echo "start fetch code from git:${REPOSITORY}"
                deleteDir()
                git "${REPOSITORY}"
            }
        }
        stage('Build') {
           agent {
                docker {
                    image 'maven:3-alpine'
                    args '-v /root/.m2:/root/.m2'
                }
            }
            steps {
                echo 'Building'
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }

        stage('Push'){
            agent any
            steps{
                echo 'Push images...'
                sh 'bash buildImg.sh eureka-server 1.2'
            }
        }
        stage('Run'){
            steps{
                echo 'Run project...'
            }
        }
    }
}