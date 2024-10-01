#
# Create the Network Interface for the Linux Server
#
resource "aws_network_interface" "linux" {
  subnet_id         = aws_subnet.linux_subnet.id
  source_dest_check = "false"
  security_groups   = [aws_security_group.linux.id]
  tags = {
    Name = "${var.prefix}-linux"
  }
}
