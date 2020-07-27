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
                         agent {docker { image 'docker:18.09.7'
                                         command:
                                         - cat
                                         tty: true
                                         volumeMounts:
                                         - mountPath: /var/run/docker.sock
                                        }}                                                         
                     steps{
                        script{  
                          //sh 'docker run -privileged -t -i jpetazzo/dind'     
                          sh 'docker run -ti -v /var/run/docker.sock:/var/run/docker.sock docker:18.09.7'     
                          //sh 'dockerd'     
                          //sh 'docker run -d --name dind-rootless --privileged docker:dind-rootless --experimental'   
                          //sh 'docker run -v /var/run/docker.sock:/var/run/docker.sock --privileged --name doc -d docker'     
                          sh 'docker ps'     
                          //sh 'docker build -f Dockerfile -t ec2-18-237-35-117.us-west-2.compute.amazonaws.com:8123/nginx:3.0.0 .'                               
                               }           
                          
                         }
                   }                    
}
}
