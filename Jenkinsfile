pipeline {
  agent { label 'workstation'}

  options {
    ansiColor('xterm')
  }

  stages {
    stage('Terraform Apply') {
      steps {
        sh 'make'
      }
    }

  }

}