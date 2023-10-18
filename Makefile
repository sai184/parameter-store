default:
	#git pull
	terraform init -reconfigure
	terraform apply -auto-approve

apply:
	terraform init -reconfigure
	terraform apply -auto-approve