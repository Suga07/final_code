resource "aws_ecs_cluster" "ECSCluster" {
  name = "cluster-us-e2-dev-pictory-api"
}
data "template_file" "json-asset_search" {
  template = file("json_file_for_ecs/asset-search.json")
  vars = {
    accountID = var.accountID
    aws_logs = var.aws_cloudwatch_log_group
    aws_region = "${var.region}"
    asset_search-img = "${var.asset_search-image}"
  }
}


#---------------------------------------------------------------------------------------
resource "aws_ecs_service" "ECSService3" {
  name    = "service-us-e2-dev-asset-search"
  cluster = aws_ecs_cluster.ECSCluster.id
  load_balancer {
    target_group_arn = aws_lb_target_group.ElasticLoadBalancingV2TargetGroup1.arn
    container_name   = "asset-search-container"
    container_port   = 5000
  }
  service_registries {
    # registry_arn = "arn:aws:servicediscovery:${var.region}:${var.accountID}:service/srv-5yyk7k7brmzzvzwv"
    registry_arn = aws_service_discovery_service.ecs-assetsearch-ns.arn
  }
  desired_count                      = 1
  launch_type                        = "FARGATE"
  platform_version                   = "LATEST"
  task_definition                    = aws_ecs_task_definition.ECSTaskDefinition7.arn
  deployment_maximum_percent         = 200
  deployment_minimum_healthy_percent = 100
  # iam_role                          = "arn:aws:iam::${var.accountID}:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
  network_configuration {
    assign_public_ip = false
    security_groups = [
      aws_security_group.lb.id
    ]
    subnets = [
      aws_subnet.EC2Subnet3.id,
      aws_subnet.EC2Subnet4.id
    ]
  }
  health_check_grace_period_seconds = 5
  scheduling_strategy               = "REPLICA"
}

resource "aws_ecs_task_definition" "ECSTaskDefinition7" {
  family             = "tdef-us-e2-dev-asset-search"
  task_role_arn      = "arn:aws:iam::${var.accountID}:role/ecsTaskExecutionRole"
  execution_role_arn = "arn:aws:iam::${var.accountID}:role/ecsTaskExecutionRole"
  network_mode       = "awsvpc"
  # container_definitions = "[{\"name\":\"asset-search-container\",\"image\":\"701488979254.dkr.ecr.us-east-2.amazonaws.com/asset-search:b1a582173bb626899040f92b81b8aa3c1c71f3ff\",\"cpu\":1024,\"memoryReservation\":4096,\"portMappings\":[{\"containerPort\":80,\"hostPort\":80,\"protocol\":\"tcp\"}],\"essential\":true,\"environment\":[{\"name\":\"ASSETS_RANK_SERVICE\",\"value\":\"http://assets-rank.dev:80\"},{\"name\":\"IMAGE_PROXY\",\"value\":\"https://api.pictory.ai/asset-search\"},{\"name\":\"MEDIA_TABLE\",\"value\":\"media-pictorydev\"},{\"name\":\"ASSETS_RANK_LAMBDA\",\"value\":\"lambda-us-e2-dev-assets-rank\"},{\"name\":\"PUSH_NOTIFICATION_SERVICE\",\"value\":\"http://push-notification.dev:80\"}],\"mountPoints\":[],\"volumesFrom\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/tdef-us-e2-dev-asset-search\",\"awslogs-region\":\"us-east-2\",\"awslogs-stream-prefix\":\"ecs\"}}}]"
  # "image":"${var.accountID}.dkr.ecr.us-east-2.amazonaws.com/test-image:latest/asset-search:b1a582173bb626899040f92b81b8aa3c1c71f3ff"
  container_definitions = data.template_file.json-asset_search.rendered
  requires_compatibilities = ["FARGATE"]
  cpu    = "1024"
  memory = "4096"
}
#------------------------------------------------------------------------------------


