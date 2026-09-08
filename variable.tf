variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  # Add your preferred default region
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_count" {
  description = "Number of Nginx servers"
  type        = number
  default     = 4
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "nginx-ha-project"
}