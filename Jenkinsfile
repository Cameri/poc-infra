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
                    sh '/kaniko/executor --context `pwd` --cache-copy-layers --skip-tls-verify --destination=ricardoclearco/kaniko-demo:latest --cache=true --cache-repo=ricardoclearco/kaniko-demo-cache --cache-dir=/cache --force'
                }
        	}
        }
    }
}