pipeline {				//indicate the job is written in Declarative Pipeline
    agent any				//agent specifies where the pipeline will execute. 
    stages {
        stage ("build") {		//an arbitrary stage name
            steps {
                build 'Copycode'	//this is where we specify which job to invoke.
            }
        }
    stage ("Deploy") {		//an arbitrary stage name
            steps {
                Deploy 'Copycode'	//this is where we specify which job to invoke.
            }
        }    
    }
}