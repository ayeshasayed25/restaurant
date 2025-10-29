# ------------------------------
# Provider Variables
# ------------------------------
variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

# ------------------------------
# EC2 Configuration
# ------------------------------
variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-00af95fa354fdb788" # Amazon Linux 2 AMI (ap-south-1)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "devkey"
}

# ------------------------------
# Security Group Configuration
# ------------------------------
variable "allowed_ports" {
  description = "List of inbound ports to allow"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "allowed_cidr" {
  description = "Allowed CIDR blocks for inbound access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

# ------------------------------
# Tags
# ------------------------------
variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "MughlaiFoodServer"
}
