$ sudo docker build -t core-ubuntu-jammy:develop -f dockerfile-kasm-core-ubuntu-jammy .
$ sudo docker build -t ubuntu-jammy:dev -f dockerfile-kasm-ubuntu-jammy-desktop .
$ sudo docker run -it --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst -e KASM_USER_PASSWORD=12341234gst ubuntu-jammy:dev

The container is now accessible via a browser : `https://<IP>:6901`

- **User** : `kasm_user`
- **Password**: `password`


 3 warnings found (use docker --debug to expand):
 - LegacyKeyValueFormat: "ENV key=value" should be used instead of legacy "ENV key value" format (line 7)
 - LegacyKeyValueFormat: "ENV key=value" should be used instead of legacy "ENV key value" format (line 8)
 - LegacyKeyValueFormat: "ENV key=value" should be used instead of legacy "ENV key value" format (line 55)

======================================

sudo docker build -t kasmweb/firefox:dev -f dockerfile-kasm-firefox .

sudo docker build -t core-ubuntu-jammy:dev -f dockerfile-kasm-ubuntu-jammy .

sudo docker build -t ubuntu-jammy:dev -f dockerfile-kasm-ubuntu-jammy-desktop .

sudo docker run -it --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst -e KASM_USER_PASSWORD=12341234gst ubuntu-jammy:dev
sudo docker run -d --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst kasmweb/debian-bookworm-desktop:1.16.0

====================================

sudo docker build -t kasmweb/firefox:dev -f dockerfile-kasm-firefox .
sudo docker build -t kasmweb/ubuntu-noble-desktop:dev -f dockerfile-kasm-ubuntu-noble-desktop .

sudo docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=password kasmweb/firefox:dev

sudo docker run -it --shm-size=512m -p 6901:6901 -e VNC_PW=12341234gst -e USER=ubt_user01 kasmweb/ubuntu-jammy-desktop:1.16.0

sudo docker run -d --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst kasmweb/ubuntu-jammy-desktop:1.16.0

sudo docker exec -it af1d73ef63b5 /bin/bash

========================================

sudo ln -s /etc/nginx/sites-available/vnc.hline.top /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
