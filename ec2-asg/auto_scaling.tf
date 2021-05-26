resource "aws_key_pair" "mykeypair" {
  key_name   = var.key_pair.key_name
  public_key = var.key_pair.public_key
}

resource "aws_launch_template" "my_launch_template" {
  name          = var.launch_template.name
  image_id      = var.launch_template.image_id
  instance_type = var.launch_template.instance_type
  key_name      = aws_key_pair.mykeypair.key_name
  placement {
    availability_zone = "ap-south-1a"
  }
}

resource "aws_autoscaling_group" "myasg" {
  name               = var.asg_vars.asg_name
  max_size           = var.asg_vars.max_size
  min_size           = var.asg_vars.min_size
  desired_capacity   = var.asg_vars.desired_capacity
  availability_zones = var.azs
  launch_template {
    id      = aws_launch_template.my_launch_template.id
    version = "$Latest"
  }
}
