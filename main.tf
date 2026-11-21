locals {
  project = "terraform-aws-config-lab"
}

resource "aws_config_config_rule" "s3_encryption" {
  name        = "terraform-s3-bucket-encryption-check"
  description = "Checks whether S3 buckets have server-side encryption enabled."

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED"
  }

  scope {
    compliance_resource_types = [
      "AWS::S3::Bucket"
    ]
  }

  tags = {
    Project     = local.project
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
