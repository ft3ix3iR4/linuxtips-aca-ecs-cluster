resource "aws_ssm_parameter" "lb_arn" {
    name = "/linutxtips/ecs/lb/id"
    value = aws_lb.main.arn
    type = "string"
}

resource "aws_ssm_parameter" "lb_listener" {
    name = "/linutxtips/ecs/lb/listener"
    value = aws_lb_listener.main.arn
    type = "string"
}