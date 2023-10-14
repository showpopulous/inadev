pipeline {
    agent {
      kubernetes {
      	cloud 'kubernetes'
      	defaultContainer 'jnlp'
      }
    }

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                kubernetesDeploy(configs: "deployment.yaml")
            }
        }
    }
}
