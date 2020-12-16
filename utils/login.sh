#!/bin/bash

ARGO_HOST=$(kubectl get route argocd-server -n tools -o jsonpath='{.spec.host}')

argocd login \
  --grpc-web \
  --insecure \
  "${ARGO_HOST}" \
  --sso
