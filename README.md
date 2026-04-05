# Batch-Churn-Scoring-Pipeline-with-Data-Validation-Kubeflow
Using the first project recommended on https://dev.to/apprecode/7-mlops-projects-beginner-friendly-that-teach-real-production-skills-l2

# Objective

The main objective on this project to learn and build out the CI/CD flow on automating the deployment of kubeflow pipeline using Jenkins and getting use to the data engineering side of the house :D

# Infrastructure
All of the development for this project will using the latest version of Docker Desktop that comes with its ready-to-use kind( Kubernetes in Docker ) implementation. Currently using 4 nodes to run Kubeflow and Jenkins.

# Development environment setup
Using K9s as the main tool to monitor and debug the kubernetes cluster. It was very useful to see why Kubeflow was not starting up using minikube. The single node did not have enough available resources available to run the last 2 Kubeflow pods.