pipeline {
  environment {
    registry = 'yoshist/project01'
    registryCredential = 'MyDockerID'
    dockerImage = ''
  }
  agent any
  stages {
    stage ("Clone Git Project") {
      steps {
        git url: 'https://github.com/yoshist/Project01.git'
      }
    }
    stage ("Build and test code project") {
      steps {
        sh 'pwd'
        sh 'ls -l'
        sh 'java -version'
        sh 'javac HelloJava.java'
        sh 'java HelloJava'
      }
    }
    stage ("Building image") {
      steps{
        script {
          dockerImage = docker.build registry + ":b$BUILD_NUMBER"
        }
      }
    }
    stage ("Deploy Image") {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}


