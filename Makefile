build-loc:
	docker-compose build

loc:
	@make build-loc
	docker-compose up

exec:
	docker-compose exec twitter-web bash

exec-db:
	docker-compose exec twitter-db bash
