resource "aws_s3_bucket" "awsb66-bucket-03" {
  bucket = "awsb66-bucket-03"
  acl    = "private"

  tags = {
    Name = "awsb66-bucket-02"
  }
  lifecycle {
    create_before_destroy = true
  }
}

