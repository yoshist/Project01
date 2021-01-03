pipeline {
  agent { dockerfile true }
  triggers { cron('* * * * *') }
  stages {
    stage ("checkout") {
      steps {
        git url: 'https://github.com/yoshist/Project01.git'
      }
    }
    stage ("compile") {
      steps {
        sh 'pwd'
        sh 'ls -l'
        sh 'java -version'
        sh 'javac HelloJava.java'
        sh 'java HelloJava'
      }
    }
  }
}


