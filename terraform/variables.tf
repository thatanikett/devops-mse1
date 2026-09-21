# ==============================================================================
# Variables Configuration
# ==============================================================================

variable "environment" {
  description = "Target deployment environment (e.g., dev, prod)"
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be either 'dev' or 'prod'."
  }
}

variable "project_name" {
  description = "Name of the project used for resource naming and tagging"
  type        = string
  default     = "ecommerce"
}

variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the environment VPC"
  type        = string
}

variable "availability_zone_count" {
  description = "Number of Availability Zones and public subnets to configure"
  type        = number
  default     = 1
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for application servers (e.g., t3.micro, t3.small)"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to provision in the environment"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "Optional custom AMI ID override. If not specified, Amazon Linux 2023 AMI is discovered dynamically."
  type        = string
  default     = null
}

variable "operator_name" {
  description = "Enter the name of the engineer/operator deploying this infrastructure (Dynamic User Input)"
  type        = string
}

