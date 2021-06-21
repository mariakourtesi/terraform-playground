output "all_users" {
    value = aws_user_names.example
}

output "all_arns" {
    value = values(aws_user_names.example)[*].arn
}