build:
	docker-compose build

start:
	docker-compose up -d --force-recreate

validate:
	docker-compose exec dev-box terraform validate terraform/

apply:
	docker-compose exec dev-box terraform init terraform/
	docker-compose exec dev-box terraform apply --auto-approve terraform/

destroy:
	docker-compose exec dev-box terraform destroy -auto-approve terraform/

clean:
	docker-compose down && docker-compose rm --force
