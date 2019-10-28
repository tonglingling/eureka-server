#!groovy
pipeline {
    agent any
    environment{
        SCRIPT_PATH="/root/scripts"
    }
    stages{
         stage('静态分析'){
            steps{
                echo "start check code"
            }
        }
         stage('编译+单元测试'){
            steps{
                echo "start compile"
                sh "mvn -U -am clean install -Dmaven.test.skip=true "
            }
        }

    }
}