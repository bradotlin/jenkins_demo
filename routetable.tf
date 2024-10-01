# #########################################################################################
# Here you will find the Route Tables, Route Table Associations and the IGW Configurations #
###########################################################################################
#
# Create the IGW
#
resource "aws_internet_gateway" "linux_igw" {
  vpc_id = aws_vpc.linux_vpc.id
  tags = {
    Name = "${var.prefix}-gw"
  }
}
#
# Create the TGW App Stack Route Table1
#
resource "aws_route_table" "linux-route-table" {
  vpc_id = aws_vpc.linux_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.linux_igw.id
  }
  tags = {
    Name = "${var.prefix}-linux-route-table"
  }
}
#
resource "aws_route_table_association" "linux-route-table" {
  subnet_id      = aws_subnet.linux_subnet.id
  route_table_id = aws_route_table.linux-route-table.id
}