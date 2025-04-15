resource "aws_s3_bucket" "awsb66-bucket-111" {
  bucket = "awsb66-bucket-111"
  acl    = "private"

  tags = {
    Name        = "awsb66-bucket-111"
    Environment = "Dev"
  }
}