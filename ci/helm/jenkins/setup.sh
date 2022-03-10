helm repo list | grep jenkinsci || helm repo add jenkinsci https://charts.jenkins.io && helm repo update jenkinsci
helm upgrade --install jenkins -n jenkins -f values.yaml jenkinsci/jenkins
