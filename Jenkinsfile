pipeline {
    agent any
tools {
  terraform 'terraform11'
}
stages {
    stage('git-checkout') {
        steps{
            git branch: 'main', url: 'https://github.com/sudhasanshi/jenkins-terraform.git'
        }
    }
    stage('terraform-init') {
        steps{
            sh 'terraform init'
        }
    }
     stage('terraform-apply') {
        steps{
            sh 'terraform apply --auto-approve'
        }
    }
     stage('terraform-apply') {
        steps{
            sh 'terraform destroy --auto-approve'
        }
    }
}
}
