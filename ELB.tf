resource "aws_lb_target_group" "TG" {
  name = "TG"
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id
}


resource "aws_elb" "LB" {
  name = "LB"
  internal = false
  security_groups = [aws_security_group.SG.id]
  availability_zones = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]


  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  instances = [aws_instance.ec2.id, aws_instance.ec2_1.id]
  cross_zone_load_balancing = true
  idle_timeout = 40

  tags = {
    name = "LB"
  }
}
