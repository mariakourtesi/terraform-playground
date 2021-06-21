provider "aws" {
    region = "eu-east-2"
}

resource "aws_iam_user" {
    for_each = toset(var.user_names)
    name = each.value
}