.PHONY: up down logs restart

COMPOSE_FILE := docker-compose.yml

up:
	docker compose -f $(COMPOSE_FILE) up -d
	echo "n8n is available at http://localhost:5678"
	echo "Use make logs to follow container output."
	echo "Press make down to stop the stack."

down:
	docker compose -f $(COMPOSE_FILE) down

logs:
	docker compose -f $(COMPOSE_FILE) logs -f

restart: down up
