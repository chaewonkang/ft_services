# ft_services
 This is a System Administration and Networking project.

# Introduction
Ft_services will introduce you to Kubernetes. You will discover cluster management and
deployment with Kubernetes. You will virtualize a network and do "clustering".

<p align="center">
  <img src="https://user-images.githubusercontent.com/26336407/107672983-cff81100-6c95-11eb-9662-7229226ed06f.png">
</p>

# Here is an example of what you will need to set up:

<p align="center">
  <img width="1002" alt="Screen Shot 2021-02-11 at 6 06 32 PM" src="https://user-images.githubusercontent.com/26336407/107671303-fa48cf00-6c93-11eb-94ee-50a9a72e0e6d.png">
</p>

# How to execute project !
<ol>
  <li>Install Virtualbox</li>
  <li>Install docker</li>
  <li>Install minikube</li>
  <li>minikube start</li>
</ol>

# To point your shell to minikube's docker-daemon, run:
<b>eval $(minikube docker-env)</b>

# Build Images Nginx phpmyadmin mysql wordpress influxdb grafana !
docker build -t <name_images> <path_Dockerfile>

# How to create component kubernetes ... !
kubectl apply -f <path_yaml_file>
