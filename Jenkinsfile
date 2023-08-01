pipeline {
  agent any
  stages {
    stage('Git Pull') {
      steps {
        sh 'cd /opt'
        sh 'git pull "https://github.com/TharunMg06/app.git" '
      }
    }
    stage('Build') {
      steps {
        
        sh 'docker build -t api .'
      }
    }
    stage('Deploy Docker Image to Kubernetes') {
      steps {
        sh 'kubectl apply -f deployment.yaml'
      }
    }
 
  }
}
