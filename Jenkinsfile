node {
    // Clean workspace before doing anything
    deleteDir()
    try {
        stage ('Clone') {
            checkout scm
        }
        stage ('Build') {
            sh "mvn clean install"
        }
        stage ('Tests') {
            parallel 'static': {
                sh "echo 'shell scripts to run static tests...'"
            },
            'unit': {
                sh "mvn test"
            },
            'integration': {
                sh "mvn verify -Pfailsafe"
            }
        }
        stage ('Deploy') {
            deploy adapters: [tomcat9(credentialsId: 'tomcat-credentials', path: '', url: 'http://46.101.142.166:8080')], contextPath: 'mvnlab', war: '**/*.war'
        }
    } catch (err) {
        currentBuild.result = 'FAILED'
        emailext attachLog: true, body: '', recipientProviders: [developers()], subject: currentBuild.result, to: 'stroepet@students.zhaw.ch'
        throw err
    }
}
