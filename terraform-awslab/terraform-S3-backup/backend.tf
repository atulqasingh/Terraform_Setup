terraform {
  backend "s3" {
    bucket = "atul-terraform"
    key    = "terraform.tfstate"
    region = "us-east-2"
    access_key = "AWS_ACCESS_KEY"
    secret_key = "AWS_SECRET_KEY"
  }
}
//Above Create a new S3 bucket-"atul-terraform" and save terraform state file in S3.