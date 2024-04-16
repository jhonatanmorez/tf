provider "aws" {
  region = "us-west-2"
}

data "aws_vpc" "default" {
  default = true
}