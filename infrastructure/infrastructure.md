# Infrastructure

- Kubeflow run on port 8080:80

Commands to run Kubeflow

```
kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80
```

Commands to allow KFP python library to connect to Kubeflow pipelines

```
     kubectl port-forward --namespace kubeflow svc/ml-pipeline-ui 3000:80
```

Generating token for authentication for local deployment
```
     kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80
     TOKEN="$(kubectl -n $KF_PROFILE_NAMESPACE create token default-editor)"
     client = kfp.Client(host="http://localhost:8080/pipeline", existing_token=token)
     curl -v "localhost:8080/jupyter/api/namespaces/${$KF_PROFILE_NAMESPACE}/notebooks" -H "Authorization: Bearer ${TOKEN}"
```