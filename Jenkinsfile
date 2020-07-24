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
                          sh 'docker build Dockerfile -t ec2-18-237-35-117.us-west-2.compute.amazonaws.com:8123/nginx:3.0.0 .'
                               }           
                          
                         }
                   }                    
}
}
