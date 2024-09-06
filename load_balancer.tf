resource "aws_security_group" "lb" {
    name        = format("%s-load-balancer", var.projec_name)
    vpc_id      = data.aws_ssm_parameter.vpc.value

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = [
            "0.0.0.0/0"
        ]
    }

resource "aws_security_group_rule" "ingress_80" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  description       = "Liberando tráfego na porta 80."
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.lb.id
  type              = "ingress"
  }

resource "aws_security_group_rule" "ingress_443" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  description       = "Liberando tráfego na porta 443."
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.lb.id
  type              = "ingress"
  }

resource "aws_lb" "main" {
    name        = format("%s-ingress", var.projec_name)
    internal    = var.load_balancer_internal
    type        = var.load_balancer_type

    subnets = [
        data.aws_ssm_parameter.public_subnet_1a
        data.aws_ssm_parameter.public_subnet_1b
        data.aws_ssm_parameter.public_subnet_1c
    ]

    security_groups = [
        aws_security_group.lb.id
    ]

    enable_cross_zone_load_balancing    = false
    enable_deletion_protection          = false
}
}