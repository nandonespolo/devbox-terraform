build:
	docker-compose build

start:
	docker-compose up -d --force-recreate

validate:
	docker-compose exec -T devbox terraform validate terraform/

apply:
	docker-compose exec -T devbox terraform init terraform/
	docker-compose exec -T devbox terraform apply --auto-approve terraform/

destroy:
	docker-compose exec -T devbox terraform destroy -auto-approve terraform/

clean:
	docker-compose down && docker-compose rm --force
