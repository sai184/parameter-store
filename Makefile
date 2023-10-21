default:
	#git pull
	terraform init
	terraform apply -auto-approve

apply:
	terraform init
	terraform apply -auto-approve