data "aws_caller_identity" "current" {}

resource "aws_cloudtrail" "cloud-trail-resource" {
  name                          = "pictory-cloudtrail-dev"
  s3_bucket_name                = aws_s3_bucket.policy1.id
  s3_key_prefix                 = "prefix"
  include_global_service_events = false
}

resource "aws_s3_bucket" "policy1" {
  bucket        = "cloudtrail-bucket-log-pictory-poc"
  force_destroy = true
}

resource "aws_s3_bucket_policy" "policy1" {
  bucket = aws_s3_bucket.policy1.id
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSCloudTrailAclCheck",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:GetBucketAcl",
            "Resource": "${aws_s3_bucket.policy1.arn}"
        },
        {
            "Sid": "AWSCloudTrailWrite",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "${aws_s3_bucket.policy1.arn}/prefix/AWSLogs/${data.aws_caller_identity.current.account_id}/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        }
    ]
}
POLICY
}