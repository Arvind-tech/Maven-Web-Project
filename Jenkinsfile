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
                         agent {
                                   docker { 
                                           image 'docker:18.09.7'
                                           args '-v /var/run/docker.sock:/var/run/docker.sock'
                            }
                         }
                     steps{
                        script{  
      
                          sh 'docker version'     
                          sh 'docker build -f Dockerfile -t ec2-34-222-149-50.us-west-2.compute.amazonaws.com:8123/ubuntu:3.0.0 .'                               
                               }           
                          
                         }
                   }                    
}
}
