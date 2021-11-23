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
                  echo "build stage.... arun idiot"

                  echo "Build number is ${currentBuild.number} arun idiot"
                  echo "arun idiot.."
                  withCredentials([gitUsernamePassword(credentialsId: 'GIT_USER_PASS', gitToolName: 'git-tool')]) {
                        sh "git config user.name 'gkrishnans'"
                        sh "git config user.email 'gokulakrishnanaji@gmail.com'" 
                        echo "*1"

                        sh "git tag -a built-${currentBuild.number} -m 'helow'"
                        echo "*2"
                        sh "git push https://github.com/gkrishnans/sample-spring-boot-maven-app --tags"                   
                        echo "*3"
                         //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
                         
                  }
        }

/**

                    sh('''
                        git config user.name 'gkrishnans'
                        git config user.email 'gokulakrishnanaji@gmail.com' 
                        git tag -a built-${currentBuild.number}
                        git push https://github.com/gkrishnans/sample-spring-boot-maven-app --tags                   
                    ''')



                        git config user.name 'gkrishnans'
                        git config user.email 'gokulakrishnanaji@gmail.com' 

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