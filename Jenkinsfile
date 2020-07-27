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
                          //sh ' run -privileged -t -i jpetazzo/dind'                              
                          //sh 'chmod 777 docker run -v /var/run/docker.sock:/var/run/docker.sock docker'     
                         // sh 'docker run ubuntu'
                          //sh 'dockerd'     
                          //sh 'docker run -d --name dind-rootless --privileged docker:dind-rootless --experimental'   
                          //sh 'docker run -v /var/run/docker.sock:/var/run/docker.sock --privileged --name doc -d docker'     
                          sh 'docker ps'     
                          //sh 'docker build -f Dockerfile -t ec2-34-222-149-50.us-west-2.compute.amazonaws.com:8123/nginx:3.0.0 .'                               
                               }           
                          
                         }
                   }                    
}
}
