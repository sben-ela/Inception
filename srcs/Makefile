build:
	docker-compose build

build-no-cache:
	docker-compose build --no-cache

up:
	docker-compose up -d

down:
	docker-compose down

rm:
	docker rm -f $$(docker ps -a -q)

rmi:
	docker rmi -f $$(docker images -a -q)

rmv: 
	docker volume rm $$(docker volume ls -q)

rmvd:
	sudo rm -rf /home/sben-ela/data/wordpress/*
	sudo rm -rf /home/sben-ela/data/mariadb/*
