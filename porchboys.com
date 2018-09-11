server {
        listen 80;
        listen [::]:80;

        root /var/www/porchboys.com/html;
        index index.html index.htm index.nginx-debian.html;

        server_name porchboys.com www.porchboys.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
