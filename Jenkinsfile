pipeline {
    agent {
        kubernetes {
            yamlFile "ci/jenkins/agents/kaniko-executor.yaml"
        }
    }
    options {
        timeout(time: 5, unit: 'MINUTES')
    }
    stages {
        stage('Build with Kaniko') {
            steps {
                echo 'Building with Kaniko'
                sh 'env'
        		container('kaniko') {
                    sh 'env'
                    sh '/kaniko/executor --context `pwd` --verbosity debug --insecure --skip-tls-verify --destination=ricardoclearco/demo-dev:latest --force'
                }
        	}
        }
    }
}