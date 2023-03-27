#!/bin/bash

minikube start --disable-metrics=true --driver=docker \
--interactive=true \
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


# Demo 1 Deployment
kubectl create deployment hello-minikube --image=kicbase/echo-server:1.0
kubectl expose deployment hello-minikube --type=NodePort --port=8080

kubectl get services hello-minikube

echo 'Use either:'
minikube service hello-minikube
kubectl port-forward service/hello-minikube 7080:8080

# Demo 2 LoadBalancer
kubectl create deployment balanced --image=kicbase/echo-server:1.0
kubectl expose deployment balanced --type=LoadBalancer --port=8080

minikube tunnel

kubectl get services balanced

