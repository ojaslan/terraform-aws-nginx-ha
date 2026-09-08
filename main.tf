resource "aws_security_group" "nginx" {
  name        = "${var.project_name}-sg"
  description = "Security group for Nginx web servers"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "${var.project_name}-sg"
    Project = var.project_name
  }
}

resource "aws_instance" "nginx" {
  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.nginx.id
  ]

  user_data = file("${path.module}/user-data.sh")

  tags = {
    Name    = "${var.project_name}-server-${count.index + 1}"
    Project = var.project_name
    Role    = "web-server"
  }
}
