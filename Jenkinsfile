pipeline {
    agent {
        kubernetes {
            yamlFile "ci/jenkins/agents/kaniko-executor.yaml"
        }
    }
    options {
        timeout(time: 1, unit: 'HOURS')
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
                                --cache \
                                --cache-dir=/cache \
                                --destination ricardoclearco/demo-dev:latest
                        '''
                    }
                }
        	}
        }
    }
}