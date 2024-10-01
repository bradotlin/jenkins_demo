###########################################################################################
# Here we create and assign an ephemeral EIP to the Jumpbox and SSLO management interface #
###########################################################################################



resource "aws_eip" "linux" {
  vpc                       = true
  public_ipv4_pool          = "amazon"
  network_interface         = aws_network_interface.linux.id
  associate_with_private_ip = aws_network_interface.linux.private_ip
}

#
# Create EIP Association with Linux
#
resource "aws_eip_association" "management" {
  network_interface_id = aws_network_interface.linux.id
  allocation_id        = aws_eip.linux.id
}

