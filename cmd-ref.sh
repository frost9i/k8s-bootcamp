#!/bin/bash

minikube start --disable-metrics=true --driver=docker --interactive=true \
--memory='4g' --cpus='1'
# Driver is one of: virtualbox, vmwarefusion, hyperv, vmware, qemu2, docker, podman (experimental), ssh; (defaults to auto-detect)

minikube status

kubectl config view

minikube addons enable ingress
minikube addons list

minikube tunnel
# tunnel creates a route to services deployed with type LoadBalancer and sets their Ingress to their ClusterIP.
# for a detailed example see https://minikube.sigs.k8s.io/docs/tasks/loadbalancer

kubectl get ns
kubectl get pods -A -o wide

kubectl config get-contexts
kubectl config current-context

#? kubens vs kubectl config set-context


