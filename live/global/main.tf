provider "aws" {
    region = "eu-east-2"
}

resource "aws_iam_user" {
    count = 3
    name = var.user_names[count.index]
}