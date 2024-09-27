sudo docker build -t core-ubuntu-jammy:develop -f dockerfile-kasm-core-ubuntu-jammy .
sudo docker build -t ubuntu-jammy:dev -f dockerfile-kasm-ubuntu-jammy-desktop .
sudo docker run -it --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst -e KASM_USER_PASSWORD=12341234gst ubuntu-jammy:dev

The container is now accessible via a browser : `https://<IP>:6901`

 - **User** : `kasm_user`
 - **Password**: `password`

======================================


sudo docker build -t kasmweb/firefox:dev -f dockerfile-kasm-firefox .


sudo docker build -t core-ubuntu-jammy:dev -f dockerfile-kasm-ubuntu-jammy .


sudo docker build -t ubuntu-jammy:dev -f dockerfile-kasm-ubuntu-jammy-desktop .

sudo docker run -it --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst -e KASM_USER_PASSWORD=12341234gst ubuntu-jammy:dev
sudo docker run -d --shm-size=1024m -p 6901:6901 -e VNC_PW=12341234gst kasmweb/debian-bookworm-desktop:1.16.0