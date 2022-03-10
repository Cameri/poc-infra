helm repo list | grep twuni || helm repo add twuni https://helm.twun.io
helm upgrade --install docker-registry twuni/docker-registry -n jenkins -f values.yaml
