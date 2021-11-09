pipeline {
    agent {
        docker {
            image 'azul/zulu-openjdk'
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh './gradlew test assemble'
            }
        }
    }
}