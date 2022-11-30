resource "aws_lb_listener" "ElasticLoadBalancingV2Listener" {
    load_balancer_arn = aws_lb.ElasticLoadBalancingV2LoadBalancer1.arn
    port = 80
    protocol = "TCP"
    default_action {
        target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup1.arn
        type = "forward"
    }
}

