# Terraform_Setup
Terraform is an open-source infrastructure as code software tool created by HashiCorp. It enables users to define and provision a datacenter infrastructure using a high-level configuration language known as Hashicorp Configuration Language, or optionally JSON.

Steps Terraform on MAC, Linux, Windows:
-Download the terraform binary file https://www.terraform.io/downloads.html
-If MAC users have homebrew installed on their machine: Just do: brew install terraform.
-Extract the zip file.
-You will see the terraform binary executable file.
-make sure that the terraform binary is available on the PATH.
-For Mac/Linux. On the shell/terminal, go to the folder where terraform binary is extracted.
echo $"export PATH=\$PATH:$(pwd)" >> ~/.bash_profile
source ~/.bash_profile

For Windows users : follow this to add Terraform to PATH https://stackoverflow.com/questions/1618280/where-can-i-set-path-to-make-exe-on-windows

Create a new Folder and Inside folder create a file with .tf extension ("filename.tf")

provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

Note:
Replace the access_key and secret_access with your AWS IAM user credentials with enough permissions attached. You can go to IAM console on AWS to do this. First, go to the IAM management console.
-Save file and then on terminal type following command to initialize the working directory for terraform.
-terraform init.
-after successfull terraform initialization 
-terraform apply ( https://www.terraform.io/docs/commands/apply.html)
-Login to the AWS management console and navigate to the EC2 management console. Check if an instance got created and running.
-terraform destroy (From your terminal/command prompt/ shell , destory the resources)


