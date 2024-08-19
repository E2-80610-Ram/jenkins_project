pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/E2-80610-Ram/jenkins_project.git'
            }
        }

        stage('Build') {
            steps {
                sh 'make'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh 'singularity build my_container.sif singularity.def'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
            junit 'target/test-reports/**/*.xml'
        }
    }
}
