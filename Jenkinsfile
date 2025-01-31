pipeline {
    agent any
    stages 
    {
        stage('checkout') { 
            steps {
                sh 'ls'
                sh 'pwd'
            }
        }
         stage('build') { 
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
