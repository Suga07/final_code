resource "aws_lb_target_group" "ElasticLoadBalancingV2TargetGroup1" {
    health_check {
        interval = 30
        path = "/api/v1/health"
        port = "5000"
        protocol = "HTTP"
        timeout = 6
        unhealthy_threshold = 3
        healthy_threshold = 3
        matcher = "200-399"
    }
    port = 5000
    protocol = "TCP"
    target_type = "ip"
    vpc_id = aws_vpc.EC2VPC.id
    name = "tg-us-e2-dev-asset-search"
}

