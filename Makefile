volumes:
	mkdir -p /home/${USER}/data/wp
	mkdir -p /home/${USER}/data/db

up: volumes
	docker-compose -f srcs/docker-compose.yml up
down:
	docker-compose -f srcs/docker-compose.yml down
build:
	docker-compose -f srcs/docker-compose.yml build
ps:
	docker-compose -f srcs/docker-compose.yml ps
clean:
	docker rmi -f $$(docker images -qa)
	echo "y" | docker builder prune
	echo "y" | docker system prune
rmvolumes:
	sudo rm -rf /home/${USER}/data/*
	
