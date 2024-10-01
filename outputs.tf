

output "Linux_public_ip" {
  value       = aws_instance.linux.public_ip
  description = "The public IP of the jumpbox."
}

output "Linux_AMI" {
  value = nonsensitive(aws_instance.linux.ami)
}

output "cpu_core_count" {
  value = aws_instance.linux.cpu_core_count

}