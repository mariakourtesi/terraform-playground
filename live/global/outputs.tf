output "all_arn" {
    value = aws_user_names.example[*].arn
    description = "The ARNs of all users"
}