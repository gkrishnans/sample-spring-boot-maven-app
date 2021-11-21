pipeline {
    agent any
    stages {
        stage ('maven installation') {
            steps {
                  sh "ls"
                  //sh "./mvnw install"
                  echo "maven installation....."

            }
        }

        stage ('build Stage') {
            steps
            {
                  //sh "./mvnw spring-boot:run"
                  echo "build stage.... "
                  echo "Build number is ${currentBuild.number}"
            }
        }


        stage ('adding tag to the git') {
            steps
            {
                  //sh "./mvnw spring-boot:run"
                  sh "git tag built-${currentBuild.number} "
                  sh "git push origin --tag"
                  echo "Build number is ${currentBuild.number}"
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


//sh "./mvnw spring-boot:run -Dspring-boot.run.arguments=--server.port=8010"                                
