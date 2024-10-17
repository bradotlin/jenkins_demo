#
# Create Linux server
#
resource "aws_instance" "linux" {

  ami           = var.ami
  instance_type = "t3.small"
  associate_public_ip_address = false
  key_name = terraform.workspace == "default" ? var.ec2_key_name : var.ec2_key_name_west
  #key_name = var.ec2_key_name
  # availability_zone = var.az
  subnet_id              = aws_subnet.linux_subnet.id
  vpc_security_group_ids = [aws_security_group.linux.id]
  tags = {
    Name = "${var.prefix}-linux-server"
  }
  #  network_interface {
  #    network_interface_id = aws_network_interface.linux.id
  #    device_index         = 0
  #  }
}
#
