#!/bin/bash

argocd app create app-config \
  --project default \
  --repo https://github.com/gct-showcase/inventory-gitops.git \
  --revision master \
  --path app-config \
  --dest-namespace tools \
  --dest-server https://kubernetes.default.svc \
  --sync-policy automated \
  --sync-option Prune=true \
  --self-heal
