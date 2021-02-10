kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
#
kubectl apply -f ./srcs/yaml_config/metallb.yaml
#
docker build -t nginx       ./srcs/image_config/nginx
docker build -t phpmyadmin  ./srcs/image_config/phpmyadmin
docker build -t wordpress   ./srcs/image_config/wordpress
docker build -t mysql       ./srcs/image_config/mysql
docker build -t influxdb    ./srcs/image_config/influxdb
docker build -t grafana     ./srcs/image_config/grafana
docker build -t ftps        ./srcs/image_config/ftps
# 
kubectl apply -f ./srcs/yaml_config/nginx.yaml
kubectl apply -f ./srcs/yaml_config/mysql.yaml
kubectl apply -f ./srcs/yaml_config/wordpress.yaml
kubectl apply -f ./srcs/yaml_config/phpmyadmin.yaml
kubectl apply -f ./srcs/yaml_config/influxdb.yaml
kubectl apply -f ./srcs/yaml_config/grafana.yaml
kubectl apply -f ./srcs/yaml_config/ftps.yaml