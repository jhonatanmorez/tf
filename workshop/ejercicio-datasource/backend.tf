terraform {
  backend "s3" {
    bucket = "repo-estado-tf"
    key = "ejercicio-datasource\terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform_state"
  }
}