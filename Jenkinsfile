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
        script{
        sh 'docker build -t api .'
        sh 'docker tag api:latest nandha13/task:tagname'
        docker.withRegistry("", "DockerHub") {
        def image = docker.image("nandha13/task:tagname");
          image.push()
      }
        } 
        }
    }
 
 
  }
}
