pipeline {
       agent {label "jenkins-docker-slave"}
             stages{             
                  stage('maven version'){ 
                         agent {docker { image 'docker.io/library/maven:latest'}}                                                         
                     steps{
                        script{                              
                          sh "mvn --version"
                               }           
                          
                         }
                   }
                  stage('docker build'){ 
                         agent {docker { image 'docker.io/library/docker:18.09.7'}}                                                         
                     steps{
                        script{                              
                          sh 'docker build -t Dockerfile .'
                               }           
                          
                         }
                   }                    
}
}
