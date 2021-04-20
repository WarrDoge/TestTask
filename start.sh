#!/usr/bin/env/ bash 
if [[ "$1" == "ansible" ]]; then
	docker build ansible_container
elif [[ "$1" == "terraform" ]]; then
	docker build terraform_container
else
	echo "Unknown container"
fi