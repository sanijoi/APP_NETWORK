pipeline {
    agent any
    stages {
        stage('terrafrom init') {
            steps { 
                dir ('app_infra/ec2') {
                sh "terraform init"
                }
            }
        }
        stage ('terraform validate') {
            steps {
                dir ('app_infra/ec2') {
                    sh "terraform validate"
                }
            }
        }
        stage ('terraform plan') {
            steps{
                dir ('app_infra/ec2'){
                    sh "terraform plan"
                }
            }
        }
    //    stage ('terraform apply') {
    //        steps{
    //            dir ('app_infra/ec2'){
    //                sh "terraform apply --auto-approve"
    //        }
    //    }
    //} 
}   
    post { 
        always {
            echo "### CLEARNING WORKSPACE ###"
            cleanWs()
        }
    }
}
