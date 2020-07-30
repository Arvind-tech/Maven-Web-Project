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
                                           command '['docker', 'run', '--rm', '-d', '--privileged', 'docker:dind', '80:80', 'httpd:latest']'
                                           
                            }
                         }
                     steps{
                        script{  
      
                          sh 'docker version'  
                               
                               //sh 'env DOCKER_HOST=tcp://docker:2375'
                          //sh 'docker run --rm -d --privileged docker:dind -e DOCKER_HOST=ec2-34-222-104-216.us-west-2.compute.amazonaws.com:8123'                               
                          //sh 'docker run --rm -d --privileged docker:dind --name Arvind'                          
                          //sh 'docker build -f Dockerfile -t ec2-52-39-183-6.us-west-2.compute.amazonaws.com:8123/ubuntu:3.0.0 .'
                          //sh 'docker exec -t $(docker ps -ql) dockerd-entrypoint.…'
                          //sh 'ls /etc/docker'     
                          //sh 'docker login -u admin -p admin123 ec2-34-222-104-216.us-west-2.compute.amazonaws.com:8123'
                          //sh 'docker push ec2-54-191-18-242.us-west-2.compute.amazonaws.com:8123/ubuntu:3.0.0'     
                               }           
                          
                         }
                   }                    
}
}
