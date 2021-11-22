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
                  echo "Build number is ${currentBuild.number} arun idiot"
                  echo "arun idiot.."
                  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: '9914ec3e-2984-4264-8f0b-71cb702c0a0f', usernameVariable: 'gkrishnans', passwordVariable: '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']]) {
                    sh("git tag -a built-${currentBuild.number} -m 'built-${currentBuild.number}")
                    sh("git push https://github.com/gkrishnans/sample-spring-boot-maven-app --tags")
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
}