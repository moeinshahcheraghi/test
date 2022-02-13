#!/bin/bash
helm install traefik traefik/traefik --namespace kube-system
helm install my-database bitnami/mysql
helm install --generate-name admin -f admin/values.yaml
helm install --generate-name customer -f customer/values.yaml
