up:
	docker compose up -d
up-build:
	docker compose up -d --build
app-bash:
	docker compose exec --user=node app bash
npm-install:
	docker compose exec --user=node app npm run install
npm-run:
	docker compose exec --user=node app npm run dev
