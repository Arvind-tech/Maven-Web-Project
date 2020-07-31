pipeline {
       agent {label 'jenkins-docker-slave'}
              stages{             
                  /*stage('maven version'){ 
                         agent {docker { image 'maven:latest'}}                                                         
                     steps{
                        script{                              
                          sh "mvn --version"
                               }           
                          
                         }
                   }*/
                  stage('docker build'){                          
                         agent {
                                   docker { 
                                           image 'docker:dind'
                                           args '-v /var/run/docker.sock:/var/run/docker.sock -u root'                                           
                                           
                            }
                         }
                     steps{                            
                        script{  
      
                          //sh 'docker version' 
                          sh 'docker exec --tty $(docker ps -ql) sh -c "mkdir -p /etc/docker"' 
                          sh 'docker exec --tty $(docker ps -ql) sh -c "mkdir -p /root/.docker"'                                                       
                          sh '''
                               docker exec --tty $(docker ps -ql) sh -c "cat <<EOF > /etc/docker/daemon.json
                               {
                                      "insecure-registries": [
                                        "ec2-52-36-87-109.us-west-2.compute.amazonaws.com:8123"
                                      ]
                               }"
                           '''    
                           sh 'docker exec --tty $(docker ps -ql) sh -c "cat /etc/docker/daemon.json"'
                           sh 'docker exec --tty $(docker ps -ql) sh -c "cat <<EOF > /root/.docker/config.json{}"'
                           sh 'docker exec --tty $(docker ps -ql) sh -c "ls /root/.docker"'
                          //sh 'env DOCKER_HOST=tcp://docker:2375'
                          //sh 'docker run --rm -d --privileged docker:dind --names dazzling_gates --insecure-registry ec2-52-39-183-6.us-west-2.compute.amazonaws.com:8123'                               
                          //sh 'docker run --name dazzling_gates'                          
                          sh 'docker build -f Dockerfile -t ec2-52-36-87-109.us-west-2.compute.amazonaws.com:8123/scratch:5.0.0 .'                          
                          //sh 'docker restart $(docker ps -ql)'
                          //sh 'ls /etc/docker'     
                          sh 'docker login -u admin -p admin123 ec2-52-36-87-109.us-west-2.compute.amazonaws.com:8123'
                          sh 'docker push ec2-52-36-87-109.us-west-2.compute.amazonaws.com:8123/scratch:5.0.0'     
                               }           
                          
                         }                     
                   }                    
}
}
