resource "aws_s3_bucket" "awsb66-bucket-111" {
  bucket = "awsb66-bucket-111"
  acl    = "private"

  tags = {
    Name        = "awsb66-bucket-111"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "awsb66-bucket-222" {
  bucket = "awsb66-bucket-222"
  acl    = "private"

  tags = {
    Name        = "awsb66-bucket-222"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "awsb66-bucket-333" {
  bucket = "awsb66-bucket-333"
  acl    = "private"

  tags = {
    Name        = "awsb66-bucket-333"
    Environment = "Dev"
  }
}

