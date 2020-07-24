pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven build'){ 
                         agent {label "jenkins-docker-maven"}
                     steps{
                        script{
                          sh "mvn clean package"
                          }
                         }
                   }
}
}
