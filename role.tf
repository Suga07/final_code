#inline policy
resource "aws_iam_role" "IAMRole" {
    path = "/"
    name = "AWSLambdaAWSServiceAccess"
    assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    # tags = 
}

resource "aws_iam_role_policy" "IAMPolicy" {
    name = "AutoScalingGroupFullAccess"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "autoscaling:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "cloudwatch:PutMetricAlarm",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeAvailabilityZones",
                "ec2:DescribeImages",
                "ec2:DescribeInstanceAttribute",
                "ec2:DescribeInstances",
                "ec2:DescribeKeyPairs",
                "ec2:DescribeLaunchTemplateVersions",
                "ec2:DescribePlacementGroups",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeSpotInstanceRequests",
                "ec2:DescribeSubnets",
                "ec2:DescribeVpcClassicLink"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:DescribeLoadBalancers",
                "elasticloadbalancing:DescribeTargetGroups"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "iam:AWSServiceName": "autoscaling.amazonaws.com"
                }
            }
        }
    ]
}
EOF
    role = "AWSLambdaAWSServiceAccess"
}

#inline policy
resource "aws_iam_role_policy" "IAMPolicy2" {
    name = "AWSLambdaKinesisExecutionPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "kinesis:PutRecord*",
                "kinesis:DescribeStream",
                "kinesis:DescribeStreamSummary",
                "kinesis:GetRecords",
                "kinesis:GetShardIterator",
                "kinesis:ListShards",
                "kinesis:ListStreams",
                "kinesis:SubscribeToShard",
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": "*"
        }
    ]
}
EOF
    role = "AWSLambdaAWSServiceAccess"
}

#inline policy
resource "aws_iam_role_policy" "IAMPolicy3" {
    name = "CognitoUserAuthPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "cognito-idp:AdminInitiateAuth",
            "Resource": "*"
        }
    ]
}
EOF
    role = "AWSLambdaAWSServiceAccess"
}

#customer managed policy

resource "aws_iam_policy" "IAMManagedPolicy" {
    name = "InvokeOtherLambdaPolicy"
    path = "/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "lambda:InvokeAsync",
                "lambda:InvokeFunction"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "IAMManagedPolicy" {
  name       = "IAMManagedpolicy"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = aws_iam_policy.IAMManagedPolicy.arn
}

#customer managed policy
resource "aws_iam_policy" "IAMManagedPolicy2" {
    name = "LambdaCloudWatchPolicy"
    path = "/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "cloudwatch:PutMetricData",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "IAMManagedPolicy2" {
  name       = "IAMManagedpolicy"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = aws_iam_policy.IAMManagedPolicy2.arn
}

#aws managed policy
resource "aws_iam_policy_attachment"  "aws_managed_policy1" {
  name       = "SecretsManagerReadWrite"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy2" {
  name       = "AmazonS3FullAccess"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy3" {
  name       = "AmazonDynamoDBFullAccess"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy4" {
  name       = "CloudWatchLogsFullAccess"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy5" {
  name       = "AWSLambdaExecute"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy6" {
  name       = "AWSLambdaBasicExecutionRole"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy7" {
  name       = "AWSLambdaVPCAccessExecutionRole"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}

resource "aws_iam_policy_attachment"  "aws_managed_policy8" {
  name       = "AmazonRoute53ResolverReadOnlyAccess"
  roles      = [aws_iam_role.IAMRole.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53ResolverReadOnlyAccess"
}