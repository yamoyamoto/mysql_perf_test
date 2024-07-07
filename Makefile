.PHONY: start start_with_full_reset stop_with_reset_db

start:
	docker compose up

start_with_full_reset:
	docker compose down -v
	docker compose up --build

stop_with_reset_db:
	docker compose down -v

connect_db:
	docker compose exec db mysql -uroot -ppassword world
