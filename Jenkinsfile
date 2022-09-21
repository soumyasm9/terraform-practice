pipeline {
    agent any
    tools {
        terraform 'terraform-11'
    }


    stages {
         stage('Git checkout') {
            steps {
                git 'https://github.com/soumyasm9/terraform-practice'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
          stage('terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
          stage('terraform plan') {
            steps {
                sh 'terraform plan -var-file=local-vars.tfvars'
            }
        }
        
          stage('terraform apply') {
            steps {
                sh 'terraform apply -var-file=local-vars.tfvars --auto-approve'
            }
        }
    }
}
