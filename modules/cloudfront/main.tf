resource "aws_cloudfront_origin_access_control" "s3_oac" {
  name                              = "savenest-oac-${var.environment}"
  description                       = "OAC for S3 access"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "s3_distribution" {
  enabled             = true
  default_root_object = "index.html"

  origin {
    domain_name = var.bucket_regional_domain_name
    origin_id   = "s3-origin-${var.environment}"

    s3_origin_config {
      origin_access_identity = null
    }

    origin_access_control_id = aws_cloudfront_origin_access_control.s3_oac.id
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "s3-origin-${var.environment}"
    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  price_class = "PriceClass_200"

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  tags = {
    Name        = "savenest-distribution-${var.environment}"
    Environment = var.environment
  }
}

##=====================================================================================
# POLICY FOR CLOUDFRONT TO ACCESS S3 BUCKET....
##========================================================================================

resource "aws_s3_bucket_policy" "cloudfront_access" {
  bucket = var.bucket_name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "AllowCloudFrontServicePrincipalReadOnly",
        Effect = "Allow",
        Principal = {
          Service = "cloudfront.amazonaws.com"
        },
        Action   = "s3:GetObject",
        Resource = "${var.bucket_arn}/*",

        Condition = {
          StringEquals = {
            "AWS:SourceArn" = aws_cloudfront_distribution.savenest_frontend.arn
          }
        }
      }
    ]
  })
}