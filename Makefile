build:
	docker-compose build

start:
	docker-compose up -d --force-recreate

validate:
	docker-compose exec devbox terraform validate terraform/

apply:
	docker-compose exec devbox terraform init terraform/
	docker-compose exec devbox terraform apply --auto-approve terraform/

destroy:
	docker-compose exec devbox terraform destroy -auto-approve terraform/

clean:
	docker-compose down && docker-compose rm --force
