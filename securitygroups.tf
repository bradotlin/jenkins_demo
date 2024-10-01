
#
# Create Security Group for Linux Server
#
resource "aws_security_group" "linux" {
  vpc_id      = aws_vpc.linux_vpc.id
  description = "linux_sg"
  name        = "linux_sg"
  tags = {
    Name = "${var.prefix}-linux_sg"
  }
  ingress {
    # SSH only for me
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.my_public}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
