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
                 mkdir -p ~/.m2
             echo "<settings>
                      <servers>
                        <server>
                          <id>hello-world-war</id>
                          <username>${{ secrets.ARTIFACTORY_USERNAME }}</username>
                          <password>${{ secrets.ARTIFACTORY_API_KEY }}</password>
                        </server>
                      </servers>
                    </settings>" > ~/.m2/settings.xml
            }
             
        }
        
    }
}
