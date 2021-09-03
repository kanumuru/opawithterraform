resource "aws_s3_bucket" "opa_bucket" {
  bucket        = format("opa-encryption-%s", random_string.random_name.result)
  acl           = "private"
  force_destroy = true
}