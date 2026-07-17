resource "aws_s3_bucket" "raw" {
  bucket = "jaffar-raw-data-2026-demo"

  tags = {
    Name        = "tf_Raw Bucket"
    Environment = "Dev"
    Project     = var.project_name
  }
}

resource "aws_s3_bucket" "processed" {
  bucket = "jaffar-processed-data-2026-demo"

  tags = {
    Name        = "tf_Processed Bucket"
    Environment = "Dev"
    Project     = var.project_name
  }
}

resource "aws_s3_bucket" "scripts" {
  bucket = "jaffar-glue-scripts-2026-demo"

  tags = {
    Name        = "tf_Glue Scripts"
    Environment = "Dev"
    Project     = var.project_name
  }
}