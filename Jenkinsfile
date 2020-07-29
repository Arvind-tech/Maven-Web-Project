pipeline {
       agent {label 'jenkins-docker-slave'}
              stages{             
                  stage('maven version'){ 
                         agent {docker { image 'maven:latest'}}                                                         
                     steps{
                        script{                              
                          sh "mvn --version"
                               }           
                          
                         }
                   }
                  stage('docker build'){                          
                         agent {
                                   docker { 
                                           image 'docker:dind'
                                           args '-v /var/run/docker.sock:/var/run/docker.sock'
                                           args '-e DOCKER_HOST=ec2-34-222-104-216.us-west-2.compute.amazonaws.com:8123'
                                           
                            }
                         }
                     steps{
                        script{  
      
                          sh 'docker version'     
                          //sh 'docker run --rm -d --privileged docker:dind -e DOCKER_HOST=ec2-34-222-104-216.us-west-2.compute.amazonaws.com:8123'     
                          sh 'docker build -f Dockerfile -t ec2-34-222-104-216.us-west-2.compute.amazonaws.com:8123/ubuntu:3.0.0 .'                                  
                          sh 'docker login -u admin -p admin123 ec2-34-222-104-216.us-west-2.compute.amazonaws.com:8123'
                          sh 'docker push ec2-54-191-18-242.us-west-2.compute.amazonaws.com:8123/ubuntu:3.0.0'     
                               }           
                          
                         }
                   }                    
}
}
