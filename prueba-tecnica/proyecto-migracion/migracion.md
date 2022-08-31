**MIGRAR DOCKER A KUBERNETES.**

1. Tener instalado en Windows:
- Docker Desktop.
- Kubectl.
- Kompose.
- Minikube.

2. Convertir manifiestos yaml de docker-compose a K8s.
- Pararse sobre la ruta que contiene el archivo a migrar.
- Kompose convert
- kubectl apply -f api-service.yaml,api-deployment.yaml,api-claim0-persistentvolumeclaim.yaml,db-deployment.yamL,listener-deployment.yaml,listener-claim0-persistentvolumeclaim.yaml,rabbitmq-deployment.yaml

3. Iniciar minikube.
- minikube start
- minikube dashboard
- 