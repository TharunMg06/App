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
        sh 'docker login'
        sh 'docker tag api:latest nandha13/task:tagname '
        sh 'docker push nandha13/task:tagname '
      }
    }
 
 
  }
}
