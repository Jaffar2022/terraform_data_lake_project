resource "aws_kms_key" "data_lake_key" {
  description             = "KMS key for Terraform Data Lake"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = {
    Name = "terraform-data-lake-key"
  }
}

resource "aws_kms_alias" "data_lake_alias" {
  name          = "alias/terraform-data-lake"
  target_key_id = aws_kms_key.data_lake_key.key_id
}