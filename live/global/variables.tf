variable "user_names" {
    description = "Create IAM users with these names"
    type = list(string)
    default = ["artemis", "zeus", "morpheus"]
}

variable "custom_tags" {
    description = "Custom tags to set on the instances in the ASG"
    type = mar(string)
    default = {}
}