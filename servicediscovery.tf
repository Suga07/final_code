resource "aws_service_discovery_private_dns_namespace" "private-ns" {
  name = "dev" # ecsdemo.cloud
  vpc  = aws_vpc.EC2VPC.id
}

resource "aws_service_discovery_service" "ecs-assetsearch-ns" {
  name = "asset-search" #wp
  dns_config {
    namespace_id   = aws_service_discovery_private_dns_namespace.private-ns.id
    routing_policy = "MULTIVALUE"
    dns_records {
      ttl  = 60
      type = "A"
    }
  }
  health_check_custom_config {
    failure_threshold = 5
  }
}

