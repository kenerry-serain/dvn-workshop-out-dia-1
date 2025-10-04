variable "auth" {
  type = object({
    region          = string
    assume_role_arn = string
  })

  default = {
    assume_role_arn = "arn:aws:iam::<YOUR_ACCOUNT>:role/WorkshopDevOpsNaNuvemRole"
    region          = "us-east-1"
  }
}

variable "tags" {
  type = map(string)
  default = {
    Project     = "workshop-devops-na-nuvem"
    Environment = "production"
  }
}

variable "remote_backend" {
  type = object({
    bucket_name                = string
    dynamo_table_name          = string
    dynamo_table_hash_key      = string
    dynamo_table_billing_mode  = string
    dynamo_table_hash_key_type = string
  })

  default = {
    bucket_name                = "workshop-remote-backend-bucket-<YOUR_ACCOUNT>"
    dynamo_table_name          = "workshop-state-locking-table"
    dynamo_table_hash_key      = "LockID"
    dynamo_table_billing_mode  = "PAY_PER_REQUEST"
    dynamo_table_hash_key_type = "S"
  }
}