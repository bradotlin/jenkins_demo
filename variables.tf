#
# Add a prefix to objects - this will make identifying your config easier
###
variable "prefix" {
  description = "Type a prefix name to keep your objects unique "
  type        = string
  default     = "test"
}

#
# Region - Change Your Region Here
#
variable "region" {
  description = "Set the Region"
  type        = string
  default     = "us-east-1"
}

#
# Availability Zone - Set Your AZ
#
variable "az" {
  description = "Set Availability Zone"
  type        = string
  default     = "us-east-1a"
}

#
# Replace this with your SSH Keypair name 
# You should have created a key pair in advance, if not go create one!
#
variable "ec2_key_name" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
  default     = "key"
}

variable "ec2_key_name_west" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
  default     = "key-west"
}

#
# Replace this with your Pubic IP address 
#
variable "my_public" {
  description = "My Public IP Address"
  type        = string
  default     = "1.1.1.1/32"
}
