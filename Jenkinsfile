pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven build'){ 
                         agent { docker { 
                                image 'docker.io/library/maven:latest'
                                label 'jenkins-docker-maven'
                         }}
                     steps{
                        script{                              
                          sh "mvn clean package"
                               }           
                          
                         }
                   }
}
}
