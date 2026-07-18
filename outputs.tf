output "kms_key_arn" {
  value = aws_kms_key.data_lake_key.arn
}

output "kms_key_id" {
  value = aws_kms_key.data_lake_key.key_id
}