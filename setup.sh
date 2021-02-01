
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
# On first install only
# if ! kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"; then
#     exit 1
# fi
#
kubectl apply -f ./srcs/yaml_config/metallb.yaml
#
docker build -t nginx       ./srcs/image_config/nginx/
docker build -t phpmyadmin  ./srcs/image_config/phpmyadmin/
docker build -t wordpress   ./srcs/image_config/wordpress 
docker build -t mysql       ./srcs/image_config/mysql/
#
kubectl apply -f ./srcs/yaml_config/mysql.yaml
kubectl apply -f ./srcs/yaml_config/nginx.yaml
kubectl apply -f ./srcs/yaml_config/wordpress.yaml
kubectl apply -f ./srcs/yaml_config/phpmyadmin.yaml