resource "aws_s3_bucket" "First" {
  bucket = "${local.project_env}-bucket"
  #acl = "private"

  tags = {
    Name        = local.project_env
    Environment = "dev"
  }
}

resource "aws_s3_bucket_acl" "First" {
  bucket = aws_s3_bucket.First.id
  acl    = "public-read"
}