resource "aws_lambda_function" "LambdaFunction550" {
    description = ""
    function_name = "lambda-us-e2-dev-asset-search"
    architectures = [
        "x86_64"
    ]
    image_uri = "${var.asset_search-image}"
    memory_size = 128
    package_type = "Image"
    role = aws_iam_role.IAMRole.arn
    timeout = 29
    tracing_config {
        mode = "PassThrough"
    }

    vpc_config {
        subnet_ids = [
            aws_subnet.EC2Subnet3.id,
            aws_subnet.EC2Subnet4.id
        ]
        security_group_ids = [
            aws_security_group.lb.id
        ]
    }
}

resource "aws_lambda_permission" "LambdaPermission551" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod575.http_method}${aws_api_gateway_resource.ApiGatewayResource576.path}"
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/audios/premium/search"
}

resource "aws_lambda_permission" "LambdaPermission552" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod555.http_method}${aws_api_gateway_resource.ApiGatewayResource576.path}"
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v1/audios/premium/search"
}

resource "aws_lambda_permission" "LambdaPermission553" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    # source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod562.http_method}${aws_api_gateway_resource.ApiGatewayResource566.path}"
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/health"
}

resource "aws_lambda_permission" "LambdaPermission554" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    # Extracted from v2 but not connected source -- source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod558.http_method}${aws_api_gateway_resource.ApiGatewayResource471.path}"
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/images/premium/search"
}

resource "aws_lambda_permission" "LambdaPermission555" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v1/images/premium/search"
}

resource "aws_lambda_permission" "LambdaPermission556" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/images/standard/search"
}

resource "aws_lambda_permission" "LambdaPermission557" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v1/images/standard/search"
}

resource "aws_lambda_permission" "LambdaPermission558" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v1/keywords"
}

resource "aws_lambda_permission" "LambdaPermission559" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/*/api/v1/libraries/*"
}

resource "aws_lambda_permission" "LambdaPermission560" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v1/videos/premium/search"
}

resource "aws_lambda_permission" "LambdaPermission561" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/videos/premium/search"
}

resource "aws_lambda_permission" "LambdaPermission562" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/videos/standard/search"
}
resource "aws_lambda_permission" "LambdaPermission563" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v1/videos/standard/search"
}
resource "aws_lambda_permission" "LambdaPermission564" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod564.http_method}${aws_api_gateway_resource.ApiGatewayResource567.path}"
    #Not Found Wrong Resource
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/assets/categories
}
resource "aws_lambda_permission" "LambdaPermission565" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/assets/categories
}
resource "aws_lambda_permission" "LambdaPermission566" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/assets/categories
}
resource "aws_lambda_permission" "LambdaPermission567" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/assets/categories
}
resource "aws_lambda_permission" "LambdaPermission568" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod558.http_method}${aws_api_gateway_resource.ApiGatewayResource571.path}"
    #Not Found Wrong Resource
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/images/premium/search
}
resource "aws_lambda_permission" "LambdaPermission569" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod559.http_method}${aws_api_gateway_resource.ApiGatewayResource573.path}"
    #Not Found Wrong Resource
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/images/standard/search
}
resource "aws_lambda_permission" "LambdaPermission570" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    #Not Found Wrong Resource
    #source_arn = "arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v1/videos/premium/search"
}
resource "aws_lambda_permission" "LambdaPermission571" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod571.http_method}${aws_api_gateway_resource.ApiGatewayResource572.path}"
#rn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/videos/premium/search
}
resource "aws_lambda_permission" "LambdaPermission572" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod565.http_method}${aws_api_gateway_resource.ApiGatewayResource568.path}"
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/GET/api/v2/videos/standard/search
}
resource "aws_lambda_permission" "LambdaPermission573" {
    action = "lambda:InvokeFunction"
    function_name = "${aws_lambda_function.LambdaFunction550.arn}"
    principal = "apigateway.amazonaws.com"
    source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod553.http_method}${aws_api_gateway_resource.ApiGatewayResource565.path}"
#arn:aws:execute-api:us-east-2:701488979254:ne3n4nua1l/*/POST/api/v2/keywords/suggestion
}


#Configuring Additonal

# resource "aws_lambda_permission" "LambdaPermission554" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod564.http_method}${aws_api_gateway_resource.ApiGatewayResource567.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission555" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod574.http_method}${aws_api_gateway_resource.ApiGatewayResource575.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission556" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod551.http_method}${aws_api_gateway_resource.ApiGatewayResource569.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission557" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod573.http_method}${aws_api_gateway_resource.ApiGatewayResource574.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission558" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod558.http_method}${aws_api_gateway_resource.ApiGatewayResource571.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission559" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod564.http_method}${aws_api_gateway_resource.ApiGatewayResource567.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission560" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod559.http_method}${aws_api_gateway_resource.ApiGatewayResource573.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission561" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod567.http_method}${aws_api_gateway_resource.ApiGatewayResource570.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission562" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod553.http_method}${aws_api_gateway_resource.ApiGatewayResource565.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission563" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod559.http_method}${aws_api_gateway_resource.ApiGatewayResource573.path}"
# }

# resource "aws_lambda_permission" "LambdaPermission564" {
#     action = "lambda:InvokeFunction"
#     function_name = "${aws_lambda_function.LambdaFunction550.arn}"
#     principal = "apigateway.amazonaws.com"
#     source_arn = "arn:aws:execute-api:${var.region}:${var.accountID}:${aws_api_gateway_rest_api.ApiGatewayRestApi550.id}/*/${aws_api_gateway_method.ApiGatewayMethod571.http_method}${aws_api_gateway_resource.ApiGatewayResource572.path}"
# }




