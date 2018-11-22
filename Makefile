up:
	docker-compose up

down:
	docker-compose down

shell:
	docker-compose exec toro sh

initReplSet:
	docker-compose exec toro /root/scripts/init-replset.sh

seed:
	docker-compose exec toro sh -c "cd /root/scripts && ./seed.sh"

stampede:
	docker-compose exec toro /root/scripts/stampede.sh
