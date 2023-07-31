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
