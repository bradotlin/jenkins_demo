###############################
# Here are the subnet configs #
###############################


#
# Create  Subnet 
#
resource "aws_subnet" "linux_subnet" {
  vpc_id                  = aws_vpc.linux_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  # availability_zone = var.az
  tags = {
    Name = "${var.prefix}-linux-management"
  }
}