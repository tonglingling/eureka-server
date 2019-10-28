#!groovy
pipeline {
    agent any
    stages{
         stage('静态分析'){
            steps{
                echo "start check code"
            }
        }
         stage('编译+单元测试'){
            steps{
                echo "start compile"
                sh "mvn clean install -Dmaven.test.skip=true "
            }
        }
    }
}