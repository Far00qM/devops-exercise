pipeline {
  agent any
  environment {
      registry = "farooqinfoeng/nodejscicd"
      registryCredential = 'dockerhub'
      dockerImage = ''
  }
  stages {
        
    stage('Cloning Git') {
      steps {
        git branch: 'farooq', url: 'https://github.com/Far00qM/devops-exercise.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
