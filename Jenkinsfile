pipeline {
    agent none
    stages 
    {
        stage('test') { 
            agent any
            steps {
                echo 'Hello World'
            }
        }
         stage('sample') { 
             agent { label 'node' }
            steps {
                echo 'Welcome to devops'
            }
        }
    }
}
