setup:
	echo "# Dockerfile" > Dockerfile
	echo "FROM node:14.18.1" >> Dockerfile
	echo "WORKDIR /app" >> Dockerfile

start:
	docker-compose up

dev:
	npm run dev

lint:
	npx eslint .

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

heroku-logs:
	heroku logs --tail

ci:
	docker-compose -f app/docker-compose.yml up --abort-on-container-exit
build:
	docker-compose -f docker-compose.yml build app
push:
	docker-compose -f docker-compose.yml push app
