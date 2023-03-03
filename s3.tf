# Test S3 Bucket
module "test_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "${var.SERVICE}-${var.BUILD_STAGE}-serverless-bucket"
  acl    = "private"

  versioning = {
    enabled = false
  }
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
  force_destroy           = true
}
