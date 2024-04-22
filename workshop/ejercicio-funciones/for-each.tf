resource "aws_iam_user" "familia" {
  for_each = toset(var.user_names2)
  name     = each.value

  tags = {
    "Name" = each.value
  }
}