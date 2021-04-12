resource "aws_s3_bucket" "s3-bucket" {
  bucket = "${var.app_name}-${var.bucket_suffix}"
  acl    = var.acl_policy

  versioning {
    enabled = var.versioning
  }

  lifecycle_rule {
    id      = var.lifecycle_rule_id
    enabled = var.lifecycle_rule_enabled

    prefix = var.lifecycle_rule_prefix

    tags = {
      rule      = var.lifecycle_rule_id
      autoclean = "true"
    }

    transition {
      days          = var.lifecycle_transition_days_to_standard_ia
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = var.lifecycle_transition_days_to_onezone_ia
      storage_class = "ONEZONE_IA"
    }

    transition {
      days          = var.lifecycle_transition_days_to_glacier
      storage_class = "GLACIER"
    }

    expiration {
      days = var.lifecycle_files_expiration
    }
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    "app"      = var.app_name
    "log data" = var.bucket_suffix
  }
}