pipeline {				//indicate the job is written in Declarative Pipeline
    agent any				//agent specifies where the pipeline will execute. 
    stages {
        stage ("Pull code") {		//an arbitrary stage name
            steps {
                git branch: 'main', credentialsId: '0226f1a1-5b16-4ec6-a153-e0bfb1622547', url: 'https://github.com/shahnawaz-khan-pathan/new_chatapp1.git'
            }
        
        }
        stage ("SonarQube Analysis") {
            steps {
                withSonarQubeEnv('chatapp-sonar')
                   
            }
        }   

        stage ("Quality gate") {
            steps {
                timeout(time: 3, unit: 'MINUTES') {
                timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true  
                }

            }
        }  
        }


        stage ("build") {		//an arbitrary stage name
            steps {
                sh 'rsync -r -e  "ssh -i /home/ubuntu/key.pem" /var/lib/jenkins/workspace/Chatapp ubuntu@10.0.3.134:/home/ubuntu/'	//this is where we specify which job to invoke.
                sh 'ssh -i /home/ubuntu/key.pem ubuntu@10.0.3.134 "bash /home/ubuntu/Chatapp/scripts/install.sh"'
                sh 'ssh -i /home/ubuntu/key.pem ubuntu@10.0.3.134 "bash /home/ubuntu/Chatapp/scripts/mv.sh"'           
            
            }


        }
    stage ("Deploy") {		//an arbitrary stage name
            steps {
                sh 'ssh -i /home/ubuntu/key.pem ubuntu@10.0.3.134 "bash /home/ubuntu/new_chatapp/scripts/start.sh"'	//this is where we specify which job to invoke.
            }
        }    
    }
}