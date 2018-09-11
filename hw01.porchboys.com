server {
        listen 80;
        listen [::]:80;

        root /var/www/hw01.porchboys.com;
        index html/index.html;

        location /img/ {
        }
        server_name hw01.porchboys.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
