1)sudo apt update
2)sudo apt install apt-transport-https ca-certificates curl software-properties-common
3)curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
4)sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
5)apt-cache policy docker-ce
6)sudo apt install docker-ce
7)sudo systemctl status docker
8)docker  -ps ( will get permission denied of this path /var/run/docker.sock)
9)sudo chmod 777 /var/run/docker.sock
10)docker -ps ( see the output)
