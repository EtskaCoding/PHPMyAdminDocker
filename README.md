# PHPMyAdminPortable
Run phpmyadmin with docker.

# Installation
1. Install docker
2. Download Dockerfile with wget 
```wget https://raw.githubusercontent.com/EtskaCoding/PHPMyAdminPortable/main/Dockerfile```
3. Build image
```docker build -t phpmyadminportable .```
5. Run PHPMyAdminPortable
```docker run -d -p 49161:8000 phpmyadminportable```
6. Connect to your phpmyadmin with http://(your ip):49161
