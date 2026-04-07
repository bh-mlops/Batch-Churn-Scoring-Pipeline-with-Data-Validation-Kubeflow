# Infrastructure

- Jenkins runs on port 8081:8080
- Kubeflow run on port 8080:80

Commands to run Jenkins and Kubeflow

```
kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80
kubectl --namespace jenkins port-forward svc/jenkins 8081:8080
```