# Infrastructure

- Jenkins runs on port 8081:8080
- Kubeflow run on port 8080:80

Commands to run Kubeflow

```
kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80
```

Commands to allow KFP python library to connect to Kubeflow pipelines

```
     kubectl port-forward --namespace kubeflow svc/ml-pipeline-ui 3000:80
```