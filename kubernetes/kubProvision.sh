#!/bin/bash

#kubectl delete deploy/nginx1;kubectl run nginx1 --image=ballo72/nginx --port=80 -o yaml > /vagrant/EduPrj/kubenetes/deploy.yaml
#kubectl scale deployment nginx1 --replicas=4
#yaml화일에 들어가서 수정한다.

kubectl delete deploy/nginx1
kubectl create -f ./deploy.yaml

#kubectl delete svc/nginx1; kubectl expose deployment/nginx1 --type="NodePort" --port 80 -o yaml > /vagrant/EduPrj/kubenetes/expose.yaml
kubectl delete svc/nginx1
kubectl create -f ./expose.yaml
