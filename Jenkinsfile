pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven version'){
                    agent {label "jenkins-docker-maven"}
                     steps{
                        script{
                          sh "mvn clean package"
                          }
                         }
                   }
}
}
