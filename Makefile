up:
	docker compose up -d
up-build:
	docker compose up -d --build
app-bash:
	docker compose exec --user=node app bash
yarn-install:
	docker compose exec --user=node app yarn install
yarn-run:
	docker compose exec --user=node app yarn dev
build:
	make up-build
	make yarn-install
	make yarn-run
