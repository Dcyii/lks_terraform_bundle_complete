
output "rds_endpoint" {
  value = aws_db_instance.lks_postgres.endpoint
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.tokens.name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.lks_bucket.id
}
