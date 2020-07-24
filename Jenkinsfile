pipeline {
       agent {label "jenkins-docker-slave"}
             stages{
                  stage('maven version'){
                     steps{
                        script{
                          sh "mvn clean package"
                          }
                         }
                   }
}
}
