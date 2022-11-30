resource "aws_cloudwatch_log_group" "log-group-assersearch" {
  name = "/ecs/tdef-us-e2-dev-asset-search22"
  # retention_in_days = 30

  tags = {
    Application = "asset-search"
    Environment = "dev"
  }
}
