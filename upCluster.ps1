kubectl create -f namespace.yml
kubectl create -f es-configmap.yaml
kubectl create -f es-discovery-svc.yaml
kubectl create -f es-svc.yaml

kubectl create -f stateful/es-master-svc.yaml
kubectl create -f stateful/es-master-stateful.yaml
kubectl rollout status -f stateful/es-master-stateful.yaml

kubectl create -f es-ingest-svc.yaml
kubectl create -f es-ingest.yaml
kubectl rollout status -f es-ingest.yaml

kubectl create -f stateful/es-data-svc.yaml
kubectl create -f stateful/es-data-stateful.yaml
kubectl rollout status -f stateful/es-data-stateful.yaml