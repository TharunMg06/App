pipeline {
  agent any
  stages {
    stage('Git Pull') {
      steps {
        sh 'cd /opt'
        sh 'git clone "https://github.com/TharunMg06/app.git" '
      }
    }
    stage('Build') {
      steps {
        sh 'cd app'
       
        sh 'docker build . --tag api'
        sh 'docker run -p 3000:3000 -d --name app-api api'
      }
    }
    stage('Deploy') {
      steps {
        sh 'curl localhost:3000'
      }
    }
  }
}
