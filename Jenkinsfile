pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                kubernetesDeploy(configs: "deployment.yaml")
            }
        }
    }
}
