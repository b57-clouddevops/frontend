pipeline {
    agent any 
    parameters {
        string(name: 'APP_VERSION', defaultValue: '403', description: 'Applicaiton Version To Be Deployed') 
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Pick Environment')
    }
    stages {
        stage('Deploying Frontend') {
            steps {
                sh "echo Authentication To EKS"
                sh "aws eks update-kubeconfig --name ${ENV}-eks-cluster"
                echo "Deploying $APP_VERSION to $ENV Cluster"
                sh "kubectl get nodes"
                sh "sed -e 's/VERSION/${APP_VERSION}/deploy.yaml' > dep.yml "
                sh "kubectl apply -f dep.yaml"
                sh "sleep 10 & kubectl get deploy"
            }
        }
    }
}