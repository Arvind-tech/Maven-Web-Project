pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven build'){                    
                     steps{
                        script{
                          sh "mvn clean package"
                          }
                         }
                   }
}
}
