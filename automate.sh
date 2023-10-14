#!/bin/bash

# ========= IMPORTANT ========== #
# Variables needed:
# export JENKINS_TOKEN="token"

# IaC (EKS Cluster)
# cd provisioning-eks-cluster
# aws eks --region us-east-2 update-kubeconfig --name education-eks-B1qZcoxa
# cd ..

# CI/CD Tool
## Role/RoleBinding needed is already in templates
helm upgrade --install jenkins helms/jenkins

## Obtain URL from Service
JENKINS_URL=$(kubectl get svc jenkins -o yaml -o=jsonpath="{.status.loadBalancer.ingress[].hostname}")

# Trigger Jenkins Job
curl -X POST -i -u admin:${JENKINS_TOKEN} http://${JENKINS_URL}:8080/job/intodev/job/add+jenkinsfile/build
