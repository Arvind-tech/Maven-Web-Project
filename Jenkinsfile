pipeline {
       agent {label "jenkins-docker-slave"}
             stages{
                 agent {label "jenkins-docker-maven"}
                  stage('maven version'){
                     steps{
                        script{
                          sh "mvn clean package"
                          }
                         }
                   }
}
}
