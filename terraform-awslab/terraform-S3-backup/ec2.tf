provider "aws" {
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_KEY"
  region     = "us-east-1"
}  
//create new ec2 instance "t2.micro"
resource "aws_instance" "terraform_example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
//above will create t2 micro instance.