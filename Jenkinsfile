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
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Build with Kaniko') {
            steps {
                echo 'Building with Kaniko'
            }
            steps {
        		container('kaniko') {
                    sh '/kaniko/executor --dockerfile `pwd`/Dockerfile --context `pwd`/ --verbosity debug --insecure --skip-tls-verify --destination=ricardoclearco/demo-dev:latest'
                }
        	}
        }
    }
}