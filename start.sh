#!/usr/bin/env/ bash 
if [[ "$1" == "ansible" ]]; then
	docker build -f ansible_container . -t ansible && docker run ansible 
	# if interective mode is needed: && docker run -it --entrypoint /bin/bash ansible
elif [[ "$1" == "terraform" ]]; then
	docker build -f terraform_container . -t terraform && docker run terraform
	# if interective mode is needed: && docker run -it --entrypoint /bin/bash terraform
else
	echo "Unknown container"
fi