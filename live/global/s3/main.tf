provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state"{
    bucket = "terraform-up-and-running-state_marias_bucket"

    #prevent accidental deletion of this s3 bucket

    lifecycle {
        prevent_destroy = true
    }

    #Enable versioning so we can see the full revision history of our state filees
    versioning {
        enabled = true
    }

    #Enable server-side encryption by default
    server_side_encryprion_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
}

# Use Dynamo DB for locking
resource "aws_dynamodb_table" "terraform_locks" {
    name = "terraform-up-and-running"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}



terraform {
    backend "s3" {
        key = "global/s3/terraform.tfstate"
    }
}