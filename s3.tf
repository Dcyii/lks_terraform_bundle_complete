
resource "aws_s3_bucket" "lks_bucket" {
  bucket = "lks-DecyIsmail-Jateng"

  lifecycle_rule {
    enabled = true
    prefix  = "proofOfPayment/"

    transition {
      days          = 180
      storage_class = "DEEP_ARCHIVE"
    }

    expiration {
      days = 365
    }
  }

  tags = {
    Name = "lks-DecyIsmail-Jateng"
  }
}
