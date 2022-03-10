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
                    sh '/kaniko/executor --context `pwd` --cache-copy-layers --skip-tls-verify --destination=ricardoclearco/demo-dev:latest --cache=true --force'
                }
        	}
        }
    }
}