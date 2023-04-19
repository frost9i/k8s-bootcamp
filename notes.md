### Docker deployed minikube exposed ports example:  
```sh
127.0.0.1:53515->22/tcp,
127.0.0.1:53516->2376/tcp,
127.0.0.1:53513->5000/tcp,
127.0.0.1:53514->8443/tcp,
127.0.0.1:53517->32443/tcp,
```
  
*TODO*: Add description for used ports.  

# Try:
kubectl api-resources --namespaced=true
kubectl api-resources --namespaced=false

kubectl explain deployment.spec --recursive
kubectl proxy --port=8880  
  
kubectl port-forward -n ingress-nginx service/ingress-nginx-controller 8090:80
Forwarding from 127.0.0.1:8090 -> 80
Forwarding from [::1]:8090 -> 80
