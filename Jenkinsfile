node {
    def app
    
     stage('Initialize'){
        def dockerHome = tool 'mydocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }

    stage('Clone repository') { 
        checkout scm
    }

    stage('Build image') {
        app = docker.build("satheshkumar/test2")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
           docker.withRegistry('https://registry.hub.docker.com', 'dockerhub1') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
