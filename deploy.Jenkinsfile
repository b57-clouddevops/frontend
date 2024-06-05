pipeline {
    agent any 
    stages {
        stage('Deploying Frontend') {
            steps {
                sh "echo Authentication To EKS"
                sh "aws eks update-kubeconfig --name dev-eks-cluster"
                sh "kubectl get nodes"
                sh "kubectl apply -f deploy.yaml"
            }
        }
    }
}