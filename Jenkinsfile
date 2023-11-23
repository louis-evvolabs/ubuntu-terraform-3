pipeline {
  agent any
  stages {
      stage('Terraform Init') {
        steps {
              withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID',credentialsId:'louis-aws-cred',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]) {
                sh "terraform init -input=false"
              }
            }
      }
      stage('Terraform Plan') {
        steps {
              withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID',credentialsId:'louis-aws-cred',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]) {
                sh "terraform plan -out=tfplan -input=false"
              }
            }
      }
      stage('Terraform Apply') {
        steps {
              withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID',credentialsId:'louis-aws-cred',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]) {
                sh "terraform apply -input=false tfplan"
              }
            }
      }
    }
}