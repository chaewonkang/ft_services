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

# Sources
<ul>
 <li><a href="https://www.youtube.com/watch?v=7bA0gTroJjw">You need to learn Kubernetes RIGHT NOW!!</a></li>
  <li><a href="https://www.youtube.com/watch?v=VnvRFRk_51k&list=PLy7NrYWoggjziYQIDorlXjTvvwweTYoNC">Complete Kubernetes Tutorial for Beginners</a></li>
  <li><a href="https://www.youtube.com/watch?v=y_vy9NVeCzo">Kubernetes Deployment Tutorial - yaml explained + Demo</a></li>
 <li><a href="https://kubernetes.io/docs/home/">Kubernetes Documentation</a></li>
 <li><a href="https://kubernetes.io/docs/concepts/configuration/secret/">Secrets in Kubernetes</a></li>
 <li><a href="https://kubernetes.io/docs/concepts/storage/persistent-volumes/">Persistent Volumes in Kubernetes</a></li>
 <li><a href="https://minikube.sigs.k8s.io/docs/handbook/persistent_volumes/">Persistent Volumes in Minikube</a></li>
 <li><a href="https://wiki.alpinelinux.org/wiki/Nginx">Nginx installation on Alpine Linux</a></li>
 <li><a href="https://codingwithmanny.medium.com/configure-self-signed-ssl-for-nginx-docker-from-a-scratch-7c2bcd5478c6">Configure Self-Signed SSL For Nginx Docker From A Scratch</a></li>
 <li><a href="https://www.howtoforge.com/tutorial/how-to-install-php-7-on-debian-8-jessie/">Nginx config for wordpress and phpmyadmin using PHP FastCGI Process Manager (php-fpm7 service)</a></li>
 <li><a href="https://stackoverflow.com/questions/56655548/there-is-mismatch-between-https-indicated-on-the-server-and-client#:~:text=(index)%20page%3A-,There%20is%20mismatch%20between%20HTTPS%20indicated%20on%20the%20server%20and,my%20client%20and%20phpmyadmin%20itself.">There is mismatch between HTTPS indicated on the server and client</a></li>
 <li><a href="https://serverfault.com/questions/931849/nginx-reverse-proxy-to-phpmyadmin-returns-404">Nginx reverse proxy to PHPMyAdmin returns 404</a></li>
 <li><a href="https://docs.phpmyadmin.net/en/latest/config.html">$cfg['PmaAbsoluteUri'] in phpMyAdmin configuration file</a></li>
 <li><a href="https://docs.influxdata.com/influxdb/v1.8/administration/config/">Configuring influxdb configuration file</a></li>
 <li><a href="https://www.howtoforge.com/tutorial/how-to-install-tig-stack-telegraf-influxdb-and-grafana-on-ubuntu-1804/">Install Telegraf and Configure it for InfluxDB</a></li>
 <li><a href="https://docs.influxdata.com/telegraf/v1.17/administration/configuration/">Telegraf Config | Telegraf Documentation</a></li>
 <li><a href="https://grafana.com/docs/grafana/latest/getting-started/getting-started/">Where you can start Grafana</a></li>
 <li><a href="https://grafana.com/docs/grafana/latest/administration/provisioning/">Provisioning Grafana</a></li>
 <li><a href="https://www.howtoforge.com/tutorial/how-to-install-and-configure-vsftpd/">How to install and configure VSFTPD</a></li>
 <li><a href="https://serverfault.com/questions/421161/how-to-configure-vsftpd-to-work-with-passive-mode">How to configure vsftpd to work with passive mode</a></li>
 <li><a href="https://titanftp.com/2018/08/23/what-is-the-difference-between-active-and-passive-ftp/#:~:text=In%20an%20active%20mode%20connection,port%20number%20to%20connect%20to.">Active vs Passive FTP - Understanding FTP Ports</a></li>
 <li><a href="https://www.jscape.com/blog/bid/87783/forward-proxy-vs-reverse-proxy#:~:text=While%20a%20forward%20proxy%20proxies,what%20the%20figure%20below%20illustrates.">Proxy vs. Reverse Proxy (Explained by Example)</a></li>
 <li><a href="https://kinsta.com/knowledgebase/307-redirect/">Understanding the HTTP 307 Temporary Redirect Status Code in Depth</a></li>
</ul>
