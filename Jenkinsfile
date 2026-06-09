pipeline {
     agent {
    docker { image 'node:16-alpine' }
  }
    stages {
        stage('Checkout') {
            steps {
                echo 'Code checked out successfully'
            }
        }

        stage('Run Script') {
            steps {
                sh 'chmod +x calculator_new.sh'
                sh './calculator_new.sh'
            }
        }
    }
}
