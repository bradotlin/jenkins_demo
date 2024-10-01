# Create the VPCs for both stacks

resource "aws_vpc" "linux_vpc" {

  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  tags = {
    Name = "${var.prefix}-linux_vpc"
  }
}