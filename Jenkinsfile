pipeline {
    agent any
    stages {
        stage ('maven installation') {
            steps {
                  sh "ls"
                  sh "./mvnw install"
            }
        }

        stage ('build Stage') {
            steps
            {
                  sh "./mvnw spring-boot:run -Dspring-boot.run.arguments=--server.port=8010"                
            }
        }

/**
        stage ('Deployment Stage') {
            steps {
                withMaven(maven : 'maven_3_5_0') {
                    sh 'mvn deploy'
                }
            }
        }
**/
    }
}
