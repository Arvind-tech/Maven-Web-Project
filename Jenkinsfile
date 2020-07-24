pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven build'){ 
                         agent {docker { image 'docker.io/library/maven:3-alpine'}}                                                         
                     steps{
                        script{                              
                          sh "mvn clean package"
                               }           
                          
                         }
                   }
}
}
