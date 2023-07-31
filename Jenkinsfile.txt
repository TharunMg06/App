pipeline {
  agent any
  stages {
    stage('Git Pull') {
      steps {
        sh 'cd /opt'
        git 'https://github.com/nandha-marimuthu/docker-flask-app.git'
      }
    }
    stage('Build') {
      steps {
        sh 'cd docker-flask-app'
        sh 'docker stop flask-dip'
        sh 'docker rm flask-dip'
        sh 'docker rmi dip'
        sh 'docker build . --tag dip'
        sh 'docker run -p 3000:3000 -d --name flask-dip dip'
      }
    }
    stage('Deploy') {
      steps {
        sh 'curl localhost:3000'
      }
    }
  }
}
