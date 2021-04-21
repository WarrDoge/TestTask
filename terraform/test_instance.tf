provider "aws" {
	access_key = "somekey"
	secret_key = "somekey"
	region = "eu-central-1"
}

resource "aws_instance" "ubuntu_test_task" {
	ami = "ami-0767046d1677be5a0"
	instance_type = "t3.micro"

	tags = {
    	Name = "terraform_test"
  	}
}