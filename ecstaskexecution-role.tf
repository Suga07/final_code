
resource "aws_iam_role" "Ec2_Role" {
    path = "/"
    name = "ecsTaskExecutionRole"
    assume_role_policy = "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs-tasks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
    max_session_duration = 3600
    # tags = 
}

#customer managed policy

resource "aws_iam_policy" "Policy40" {
    name = "InvokeOtherLambdaPolicy2"
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

resource "aws_iam_policy_attachment" "Policy" {
  name       = "policy"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = aws_iam_policy.Policy40.arn
}

#customer managed policy
resource "aws_iam_policy" "Policy1" {
    name = "LambdaCloudWatchPolicy2"
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

resource "aws_iam_policy_attachment" "Policy41" {
  name       = "policy41"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = aws_iam_policy.Policy1.arn
}

#aws managed policy
resource "aws_iam_policy_attachment"  "policy2" {
  name       = "AutoScalingFullAccess"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/AutoScalingFullAccess"
}

resource "aws_iam_policy_attachment"  "policy3" {
  name       = "AmazonS3FullAccess"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_policy_attachment"  "policy4" {
  name       = "AmazonTranscribeFullAccess"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonTranscribeFullAccess"
}

resource "aws_iam_policy_attachment"  "policy5" {
  name       = "AmazonDynamoDBFullAccess"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_policy_attachment"  "policy6" {
  name       = "AWSLambdaExecute"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
}

resource "aws_iam_policy_attachment"  "policy7" {
  name       = "AmazonECSTaskExecutionRolePolicy"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}


resource "aws_iam_policy_attachment"  "policy8" {
  name       = "AWSLambdaBasicExecutionRole"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}


resource "aws_iam_policy_attachment"  "policy9" {
  name       = "AmazonPollyFullAccess"
  roles      = [aws_iam_role.Ec2_Role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonPollyFullAccess"
}


#inline policy
resource "aws_iam_role_policy" "Policy-1" {
    name = "AWSCloudSearchAccessPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "cloudsearch:search",
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-2" {
    name = "AWSIAMPassRolePolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-3" {
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
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-4" {
    name = "AWSPollyAccessPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "polly:SynthesizeSpeech",
                "polly:StartSpeechSynthesisTask",
                "polly:ListLexicons",
                "polly:GetSpeechSynthesisTask",
                "polly:DeleteLexicon",
                "polly:ListSpeechSynthesisTasks",
                "polly:GetLexicon",
                "polly:PutLexicon",
                "polly:DescribeVoices"
            ],
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-5" {
    name = "AWSRekognitionAccessPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "rekognition:DetectLabels",
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-6" {
    name = "AWSSTSAssumeRoleService"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "sts:AssumeRole",
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-7" {
    name = "ECSTaskExecutionPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ecs:RunTask",
                "ecs:StopTask",
                "ecs:DescribeTasks",
                "ecs:DescribeTaskDefinition"
            ],
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-8" {
    name = "ExecuteAPIInvokeFullAccess"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "execute-api:*"
            ],
            "Resource": "arn:aws:execute-api:us-east-2:701488979254:*/*/*/*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "Policy-9" {
    name = "AWSCloudSearchAccessPolicy"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "logs:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
    role = "ecsTaskExecutionRole"
}