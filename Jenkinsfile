pipeline {
  agent {
    docker {
      image 'yoshist/project01:ubuntu0001'
      args '-v $HOME/.m2:/root/.m2'
    }
  }
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


