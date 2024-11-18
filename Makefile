# Makefile for managing the ClickHouse Docker setup

COMPOSE_CMD = docker compose

.PHONY: help up down clean cli

help:
	@echo "ClickHouse Docker Management Commands:"
	@echo "--------------------------------------"
	@echo "make up      - Start the ClickHouse and Tabix services"
	@echo "make down    - Stop the ClickHouse and Tabix services"
	@echo "make clean   - Stop the services and remove all containers and volumes"
	@echo "make cli     - Access the ClickHouse client in interactive mode"

up:
	$(COMPOSE_CMD) up -d

down:
	$(COMPOSE_CMD) down

clean:
	$(COMPOSE_CMD) down -v

cli:
	$(COMPOSE_CMD) exec clickhouse-server clickhouse-client
