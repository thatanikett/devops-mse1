# ==============================================================================
# Outputs Configuration
# ==============================================================================

output "current_workspace" {
  description = "Active Terraform workspace"
  value       = terraform.workspace
}

output "environment" {
  description = "Active environment name"
  value       = var.environment
}

output "operator" {
  description = "Name of the operator entered dynamically at runtime"
  value       = var.operator_name
}

output "aws_region" {
  description = "AWS region dynamically discovered by data block"
  value       = data.aws_region.current.name
}

output "aws_account_id" {
  description = "AWS Caller Identity account ID dynamically discovered by data block"
  value       = data.aws_caller_identity.current.account_id
}

output "discovered_ami_id" {
  description = "Amazon Linux 2023 AMI ID dynamically discovered by data block"
  value       = data.aws_ami.amazon_linux.id
}

output "vpc_id" {
  description = "ID of the provisioned VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the provisioned VPC"
  value       = aws_vpc.main.cidr_block
}

output "subnet_ids" {
  description = "IDs of the provisioned subnets"
  value       = aws_subnet.public[*].id
}

output "subnet_availability_zones" {
  description = "Availability zones used by the subnets"
  value       = aws_subnet.public[*].availability_zone
}

output "security_group_id" {
  description = "ID of the environment security group"
  value       = aws_security_group.app.id
}

output "instance_ids" {
  description = "IDs of the provisioned EC2 instances"
  value       = aws_instance.app[*].id
}

output "instance_public_ips" {
  description = "Public IP addresses of the provisioned EC2 instances"
  value       = aws_instance.app[*].public_ip
}
