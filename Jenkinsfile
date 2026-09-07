pipeline {
    agent any

    options {
        timeout(time: 10, unit: 'MINUTES')
    }

    stages {
        stage("Make a Directory") {
            options {
                retry(2)
            }
            steps {
                sh "mkdir -p jenkins-test"
            }
        }

        stage("Add a file") {
            steps {
                sh "touch jenkins-test/file1.txt"
            }

            post {
                always {
                    archiveArtifacts artifacts: 'jenkins-test/file1.txt'
                }
            }
        }
    }
}