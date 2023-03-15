pipeline {
    agent any
    stages {
        stage('terrafrom init') {
            steps { 
                dir ('app_network/vpc') {
                sh "terraform init"
                }
            }
        }
        stage ('terraform validate') {
            steps {
                dir ('app_network/vpc') {
                    sh "terraform validate"
                }
            }
        }
        stage ('terraform plan') {
            steps{
                dir ('app_network/vpc'){
                    sh "terraform plan"
                }
            }
        }
    //    stage ('terraform apply') {
    //        steps{
    //            dir ('app_network/vpc'){
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
