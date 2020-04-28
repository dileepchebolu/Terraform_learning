## storage/main.tf ##

## generating random value

resource "random_id" "tf_bucket_id" {
    byte_length = 2  
# Byte code 2 means generate 16 bit value
}

# Creating the Bucket 

resource "aws_s3_bucket" "tf_code" {
    bucket         =  "${var.project_name}-${random_id.tf_bucket_id.dec}"
    acl            = "private"
    force_destroy  = true
    tags = {
      name = "tf_bucket"
    }
    versioning {
      enabled = true
    }
}

## resource "aws_s3_bucket" "bucket" {}
