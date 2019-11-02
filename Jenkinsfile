pipeline {
  agent any
  stages {
        
    stage('Cloning Git') {
      steps {
        git branch: 'farooq', url: 'https://github.com/Far00qM/devops-exercise.git'
      }
    }
    
    stage('Install dependencies') {
      steps {
        sh 'sudo docker build -t nodejs . '
      }
    }
  }
}
