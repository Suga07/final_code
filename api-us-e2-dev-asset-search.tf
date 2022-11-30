resource "aws_api_gateway_rest_api" "ApiGatewayRestApi550" {
    name = "api-us-e2-dev-asset-search"
    api_key_source = "HEADER"
    endpoint_configuration {
        types = [
            "REGIONAL"
        ]
    }
}

resource "aws_api_gateway_stage" "ApiGatewayStage550" {
    stage_name = "dev"
    deployment_id = aws_api_gateway_deployment.ApiGatewayDeployment551.id
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    cache_cluster_enabled = false
    # cache_cluster_size = "0.5"
    # variables = {
    #     nlbdns = aws_lb.ElasticLoadBalancingV2LoadBalancer1.dns_name
    #     vpclink = aws_api_gateway_vpc_link.ApiGatewayVpcLink550.id#"ngbco8"
    # }
    xray_tracing_enabled = false
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment551" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment552" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment553" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment554" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment555" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment556" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment557" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment558" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment559" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment560" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment561" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment562" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment563" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment564" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment565" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment566" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment567" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment568" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment569" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment570" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment571" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment572" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_deployment" "ApiGatewayDeployment573" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
}

resource "aws_api_gateway_resource" "ApiGatewayResource551" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "standard"
    parent_id = aws_api_gateway_resource.ApiGatewayResource558.id#"fn1a4s"
}

resource "aws_api_gateway_resource" "ApiGatewayResource552" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "premium"
    parent_id = aws_api_gateway_resource.ApiGatewayResource558.id#"fn1a4s"
}

resource "aws_api_gateway_resource" "ApiGatewayResource553" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "premium"
    parent_id = aws_api_gateway_resource.ApiGatewayResource554.id#"9okeo7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource554" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "videos"
    parent_id = aws_api_gateway_resource.ApiGatewayResource562.id#"quqhtw"
}

resource "aws_api_gateway_resource" "ApiGatewayResource555" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "standard"
    parent_id = aws_api_gateway_resource.ApiGatewayResource554.id#"9okeo7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource556" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "result"
    parent_id = aws_api_gateway_resource.ApiGatewayResource575.id#"jfoyxk"
}

resource "aws_api_gateway_resource" "ApiGatewayResource557" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "api"
    parent_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.root_resource_id#"3gwereetkh"
}

resource "aws_api_gateway_resource" "ApiGatewayResource558" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "images"
    parent_id = aws_api_gateway_resource.ApiGatewayResource562.id#"quqhtw"
}

resource "aws_api_gateway_resource" "ApiGatewayResource559" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "v1"
    parent_id = aws_api_gateway_resource.ApiGatewayResource557.id#"emvftu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource560" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "audios"
    parent_id = aws_api_gateway_resource.ApiGatewayResource559.id#"pfnf60"
}

resource "aws_api_gateway_resource" "ApiGatewayResource561" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "similar"
    parent_id = aws_api_gateway_resource.ApiGatewayResource564.id#"w7ncu3"
}

resource "aws_api_gateway_resource" "ApiGatewayResource562" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "v2"
    parent_id = aws_api_gateway_resource.ApiGatewayResource557.id#"emvftu"
}

resource "aws_api_gateway_resource" "ApiGatewayResource563" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "premium"
    parent_id = aws_api_gateway_resource.ApiGatewayResource560.id#"qn9hms"
}

resource "aws_api_gateway_resource" "ApiGatewayResource564" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "assets"
    parent_id = aws_api_gateway_resource.ApiGatewayResource562.id#"quqhtw"
}

resource "aws_api_gateway_resource" "ApiGatewayResource565" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "suggestion"
    parent_id = aws_api_gateway_resource.ApiGatewayResource570.id#"djrvi6"
}

resource "aws_api_gateway_resource" "ApiGatewayResource566" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "health"
    parent_id = aws_api_gateway_resource.ApiGatewayResource559.id#"pfnf60"
}

resource "aws_api_gateway_resource" "ApiGatewayResource567" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "categories"
    parent_id = aws_api_gateway_resource.ApiGatewayResource564.id#"w7ncu3"
}

resource "aws_api_gateway_resource" "ApiGatewayResource568" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource555.id#"b0p4fe"
}

resource "aws_api_gateway_resource" "ApiGatewayResource569" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "{response_id}"
    parent_id = aws_api_gateway_resource.ApiGatewayResource556.id#"d2ghyw"
}

resource "aws_api_gateway_resource" "ApiGatewayResource570" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "keywords"
    parent_id = aws_api_gateway_resource.ApiGatewayResource562.id#"quqhtw"
}

resource "aws_api_gateway_resource" "ApiGatewayResource571" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource552.id#"1vzzfq"
}

resource "aws_api_gateway_resource" "ApiGatewayResource572" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource553.id#"8ev9tv"
}

resource "aws_api_gateway_resource" "ApiGatewayResource573" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource551.id#"0w9cc7"
}

resource "aws_api_gateway_resource" "ApiGatewayResource574" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource561.id#"qqj7ph"
}

resource "aws_api_gateway_resource" "ApiGatewayResource575" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource564.id#"w7ncu3"
}

resource "aws_api_gateway_resource" "ApiGatewayResource576" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    path_part = "search"
    parent_id = aws_api_gateway_resource.ApiGatewayResource563.id#"vngy4n"
}

resource "aws_api_gateway_method" "ApiGatewayMethod551" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource569.id#"gmubet"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod552" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource570.id#"djrvi6"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod553" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource565.id#"aqm4n7"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod554" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource566.id#"mzk7d6"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod555" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource576.id#"hpy6ab"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod556" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource568.id#"rcyoln"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod557" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource567.id#"q3slz2"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod558" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource571.id#"1vvkkk"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}
 
resource "aws_api_gateway_method" "ApiGatewayMethod559" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource573.id#"7x3w8e"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod560" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource572.id#"7xehua"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod561" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource565.id#"aqm4n7"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod562" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource566.id#"mzk7d6"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod563" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource574.id#"eazz2w"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod564" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource567.id#"q3slz2"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod565" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource568.id#"rcyoln"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod566" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource569.id#"gmubet"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod567" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource570.id#"djrvi6"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod568" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource575.id#"jfoyxk"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod569" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource571.id#"1vvkkk"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod570" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource576.id#"hpy6ab"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod571" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource572.id#"7xehua"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod572" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource573.id#"7x3w8e"
    http_method = "OPTIONS"
    authorization = "NONE"
    api_key_required = false
    request_models = {

    "application/json" = "Error"

  }
}

resource "aws_api_gateway_method" "ApiGatewayMethod573" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource574.id#"eazz2w"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod574" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource575.id#"jfoyxk"
    http_method = "POST"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

resource "aws_api_gateway_method" "ApiGatewayMethod575" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    resource_id = aws_api_gateway_resource.ApiGatewayResource576.id#"hpy6ab"
    http_method = "GET"
    authorization = "COGNITO_USER_POOLS"
    authorizer_id = aws_api_gateway_authorizer.ApiGatewayAuthorizer550.id#"3nrfno"
    api_key_required = false
}

# resource "aws_apigatewayv2_api_mapping" "ApiGatewayV2ApiMapping550" {
#     api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
#     domain_name = "dev-api.pictory.ai"
#     stage = "dev"
#     api_mapping_key = "asset-search"
# }

resource "aws_api_gateway_authorizer" "ApiGatewayAuthorizer550" {
    rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
    name = "authorizer-us-e2-dev-asset-search"
    type = "COGNITO_USER_POOLS"
    provider_arns = [
        # "arn:aws:cognito-idp:us-east-2:701488979254:userpool/us-east-2_gAvoqm0uz"
        aws_cognito_user_pool.pool1.arn
    ]
    # AuthType = "cognito_user_pools"
    identity_source = "method.request.header.Authorization"
}

# resource "aws_api_gateway_base_path_mapping" "ApiGatewayBasePathMapping550" {
#     base_path = "asset-search"
#     domain_name = "dev-api.pictory.ai"
#     api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
#     stage_name = "dev"
# }

# resource "aws_api_gateway_model" "ApiGatewayModel551" {
#     rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
#     name = "Error"
#     description = "This is a default error schema model"
#     schema = <<EOF
# {
#   "$schema" : "http://json-schema.org/draft-04/schema#",
#   "title" : "Error Schema",
#   "type" : "object",
#   "properties" : {
#     "message" : { "type" : "string" }
#   }
# }
# EOF
#     content_type = "application/json"
# }

# resource "aws_api_gateway_model" "ApiGatewayModel552" {
#     rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id#"ne3n4nua1l"
#     name = "Empty"
#     description = "This is a default empty schema model"
#     schema = <<EOF
# {
#   "$schema": "http://json-schema.org/draft-04/schema#",
#   "title" : "Empty Schema",
#   "type" : "object"
# }
# EOF
#     content_type = "application/json"
# }

resource "aws_api_gateway_vpc_link" "ApiGatewayVpcLink550" {
    name = "vpclink-us-e2-dev-asset-search"
    target_arns = [
        aws_lb.ElasticLoadBalancingV2LoadBalancer1.arn
    ]
}


#_______________________________________Resource Integration___________________________#

resource "aws_api_gateway_integration" "int550" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource576.id
  http_method = aws_api_gateway_method.ApiGatewayMethod575.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int551" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource576.id
  http_method = aws_api_gateway_method.ApiGatewayMethod570.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int552" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource576.id
  http_method = aws_api_gateway_method.ApiGatewayMethod555.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int553" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource566.id
  http_method = aws_api_gateway_method.ApiGatewayMethod562.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int554" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource566.id
  http_method = aws_api_gateway_method.ApiGatewayMethod554.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int555" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource567.id
  http_method = aws_api_gateway_method.ApiGatewayMethod564.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int556" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource567.id
  http_method = aws_api_gateway_method.ApiGatewayMethod557.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int557" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource575.id
  http_method = aws_api_gateway_method.ApiGatewayMethod568.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int558" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource575.id
  http_method = aws_api_gateway_method.ApiGatewayMethod574.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int559" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource569.id
  http_method = aws_api_gateway_method.ApiGatewayMethod551.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int560" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource569.id
  http_method = aws_api_gateway_method.ApiGatewayMethod556.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int561" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource571.id
  http_method = aws_api_gateway_method.ApiGatewayMethod558.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int562" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource571.id
  http_method = aws_api_gateway_method.ApiGatewayMethod569.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int563" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource573.id
  http_method = aws_api_gateway_method.ApiGatewayMethod559.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int564" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource573.id
  http_method = aws_api_gateway_method.ApiGatewayMethod569.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int565" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource570.id
  http_method = aws_api_gateway_method.ApiGatewayMethod552.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int566" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource570.id
  http_method = aws_api_gateway_method.ApiGatewayMethod567.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int567" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource565.id
  http_method = aws_api_gateway_method.ApiGatewayMethod553.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int568" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource565.id
  http_method = aws_api_gateway_method.ApiGatewayMethod561.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int569" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource572.id
  http_method = aws_api_gateway_method.ApiGatewayMethod571.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int570" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource572.id
  http_method = aws_api_gateway_method.ApiGatewayMethod560.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration" "int571" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource568.id
  http_method = aws_api_gateway_method.ApiGatewayMethod565.http_method
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int572" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource568.id
  http_method = aws_api_gateway_method.ApiGatewayMethod556.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}
resource "aws_api_gateway_integration" "int573" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource574.id
  http_method = aws_api_gateway_method.ApiGatewayMethod573.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.LambdaFunction550.invoke_arn 
  }

resource "aws_api_gateway_integration" "int574" {
  rest_api_id = aws_api_gateway_rest_api.ApiGatewayRestApi550.id
  resource_id = aws_api_gateway_resource.ApiGatewayResource574.id
  http_method = aws_api_gateway_method.ApiGatewayMethod563.http_method
  type = "MOCK"
  //request_tempates is required to explicitly set the statusCode to an integer value of 200
   request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}







  










  



  



