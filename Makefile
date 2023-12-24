build:
	docker-compose -f srcs/docker-compose.yml build

build-no-cache:
	docker-compose -f srcs/docker-compose.yml build --no-cache

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

rm:
	docker rm -f $$(docker ps -a -q)

rmi:
	docker rmi -f $$(docker images -a -q)

rmv: 
	docker volume rm $$(docker volume ls -q)

rmvd:
	sudo rm -rf /home/sben-ela/data/wordpress/*
	sudo rm -rf /home/sben-ela/data/mariadb/*

rmn:
	docker network prune

rmall:
	docker system prune -f