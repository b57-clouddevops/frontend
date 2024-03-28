# Frontend ( nginx web-server )

Nginx is an openSource webServer
We will use NGNIX as webserver with Reverse Proxing Capability

The frontend is the service in RobotShop to serve the web content over Nginx.
All the web content of the application will be served by this frontend

To Install Nginx.

```
# dnf install nginx -y
# systemctl enable nginx 
# systemctl start nginx 
```

Let's download the HTDOCS content and deploy under the Nginx path.

```
# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
```

Deploy in Nginx Default Location.

```
# cd /usr/share/nginx/html
# rm -rf * 
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-master README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf
```

Finally restart the service once to effect the changes.

```
# systemctl restart nginx 
```
 Check for the status of the service 
 
```
# systemctl status nginx
```
