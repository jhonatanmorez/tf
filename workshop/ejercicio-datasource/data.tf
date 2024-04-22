data "aws_iam_user" "user_cloud" {
  user_name = "usr1"
}

output "aws_iam_user_arn" {
  value = data.aws_iam_user.user_cloud.arn
}

data "aws_vpc" "vpc_1" {
  tags = {
    Name = "lab-vpc"
  }
}

data "aws_subnet" "subnet_1" {
  filter {
    name = "tag:Name"
    values = ["lab-subnet-public1-us-west-2a"]
  }
}

output "subnet_id" {
  value = data.aws_subnet.subnet_1.id
}

