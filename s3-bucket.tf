resource "aws_s3_bucket" "first" {
  bucket = "${local.project_env}-bucket"
  #acl = "private"

  tags = {
    Name        = local.project_env
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "first" {
  bucket = aws_s3_bucket.first.id
  acl    = "public-read"
}