#!/bin/bash

# https://kubeflow.example.com/pipeline/ ---> URL base
# /apis/v2beta1/pipelines

kfp --endpoint http://localhost:8080 pipeline upload \
    --pipeline-name "My First Pipeline" \
    --namespace "kubeflow-user-example-com"
    my_pipeline.yaml