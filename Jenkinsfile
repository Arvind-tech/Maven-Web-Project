pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven build'){ 
                         agent {docker { image 'docker.io/library/maven:latest'}}                                                         
                     steps{
                        script{                              
                          sh "mvn --version"
                               }           
                          
                         }
                   }
}
}
