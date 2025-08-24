resource "aws_s3_bucket" "savenest" {
  bucket = var.bucket_name

  tags = {
    Name = "savenest-${var.environment}-bucket"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.savenest.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "savenest_public_access" {
  bucket             = aws_s3_bucket.savenest.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}