all: up


up :
	docker-compose up -d --build
up-no-cashe :
	docker-compose build --no-cache
	docker-compose up -d
down:
	docker-compose down


Xwordpress:
	docker exec -it wordpress bash

Xnginx:
	docker exec -it nginx bash 

Xdatabase:
	docker exec -it database bash

rmi:
	docker rmi -f $$(docker images -a -q)

rm:
	docker rm -f $$(docker ps -a -q)

rmv:
	sudo rm -rf /home/sben-ela/data/mariadb/*
	sudo rm -rf /home/sben-ela/data/wordpress/*