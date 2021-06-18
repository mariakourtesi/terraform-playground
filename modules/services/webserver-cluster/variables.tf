variable "server_port" {
    description = "The port the server will use for HTTP requests"
    type        = number
    default     = 8080
}

variable "cluster_name" {
    description = "The name to use for all the cluster resources"
    type = string
}

variable "db_remote_state_bucket" {
    description = "The name of the s3 bucket for the databases remote state"
    type = string
}

variable "db_remote_state_key" {
    description = "The path for the database's remote state"
    type = string
}