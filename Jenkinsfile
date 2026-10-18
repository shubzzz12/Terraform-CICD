pipeline {
    agent any

     environment {
        // Points Terraform directly to the jenkins user's AWS credential file
        AWS_SHARED_CREDENTIALS_FILE = '/var/lib/jenkins/.aws/credentials'
        
        // Explicitly set your target AWS region if it isn't set in your code
        AWS_DEFAULT_REGION          = 'ap-south-1' 
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Do you want to apply the Terraform plan?', ok: 'Yes, Apply'
                sh 'terraform apply -input=false tfplan'
            }
        }
    }

}
