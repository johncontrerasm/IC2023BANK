pipeline{
    agent any

    stages{
        stage('docker build'){
            steps{
                script{
                    "docker build -f 02-primer-pipeline/Dockerfile -t johncontrerasm/ic2023bank IC2023django"
                }
            }
        }

        stage('docker push'){
            steps{
                script{
                    sh "docker push johncontrerasm/ic2023bank"
                }
            }
        }
    }

}

