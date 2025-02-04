pipeline {
    agent { label 'build-server'}
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
         stage('publish') { 
            steps {
                sh 'mvn clean deploy'
            }
        }
        
    }
}
