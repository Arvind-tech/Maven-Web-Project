pipeline {
       agent none
             stages{             
                  stage('maven build'){ 
                         agent {label "jenkins-docker-slave"}
                     steps{
                        script{
                               container('jenkins-docker-maven') {
                          sh "mvn clean package"
                               }           
                          }
                         }
                   }
}
}
