resource "aws_dynamodb_table" "this" {
  name         = var.remote_backend.dynamo_table_name
  billing_mode = var.remote_backend.dynamo_table_billing_mode
  hash_key     = var.remote_backend.dynamo_table_hash_key

  attribute {
    name = var.remote_backend.dynamo_table_hash_key
    type = var.remote_backend.dynamo_table_hash_key_type
  }

  tags = { Name = var.remote_backend.dynamo_table_name }
}
