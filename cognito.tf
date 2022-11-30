resource "aws_cognito_user_pool" "pool1" {
  name = "pictoryai6625df75_userpool_6625df75-pictorydev"
}

resource "aws_cognito_user_pool" "pool2" {
  name = "userpool-${var.region}-pictory-api"
}