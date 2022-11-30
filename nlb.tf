resource "aws_lb" "ElasticLoadBalancingV2LoadBalancer1" {
    name = "nlb-us-e2-dev-asset-search"
    internal = true
    load_balancer_type = "network"
    subnets = [
        aws_subnet.EC2Subnet4.id,
        aws_subnet.EC2Subnet3.id
    ]
    ip_address_type = "ipv4"
    access_logs {
        enabled = false
        prefix = ""
        bucket = ""
    }
    enable_deletion_protection = "false"
    enable_cross_zone_load_balancing = "false"
}

