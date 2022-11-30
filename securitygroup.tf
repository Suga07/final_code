resource "aws_security_group" "lb" {
  name        = "pictory-security-group"
  description = "controls access to the ALB"
  vpc_id      = aws_vpc.EC2VPC.id

  ingress {
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        protocol = "-1"
        to_port = 0
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
    ingress {
    from_port         = 0
    to_port           = 65535
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    }
    ingress {
    from_port         = 0
    to_port           = 65535
    protocol          = "tcp"
    }
    ingress {
        from_port = 0
        protocol = "tcp"
        to_port = 65535
        ipv6_cidr_blocks = [
            "::/0"
        ]
    }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}