provider "aws" {
  region = "ap-south-1"
  access_key = "*************"
  secret_key = "**************"
  }

resource "aws_instance" "app_vm" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name = "ansible"
  tags = {
    Name = "Application VM"
  }
}

resource "aws_instance" "db_vm" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name = "ansible"
  tags = {
    Name = "Database VM"
  }
}
