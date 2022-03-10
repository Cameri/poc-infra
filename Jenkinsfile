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
        		container(name: 'kaniko', shell: '/busybox/sh') {
                    withEnv(['PATH+EXTRA=/busybox']) {
                        sh '''#!/busybox/sh -xe
                            /kaniko/executor \
                                --dockerfile Dockerfile
                                --context `pwd`/ \
                                --verbosity debug \
                                --insecure \
                                --skip-tls-verify \
                                --destination ricardoclearco/demo-dev:latest
                        '''
                    }
                }
        	}
        }
    }
}