# ------------------------------
# AWS Configuration
# ------------------------------
aws_region = "ap-south-1"

# ------------------------------
# EC2 Configuration
# ------------------------------
instance_ami  = "ami-00af95fa354fdb788" # Amazon Linux 2 AMI for ap-south-1
instance_type = "t3.micro"
key_name      = "devkey"

# ------------------------------
# Security Group Configuration
# ------------------------------
allowed_ports = [22, 80, 443]
allowed_cidr  = ["0.0.0.0/0"]

# ------------------------------
# Tags
# ------------------------------
instance_name = "MughlaiFoodServer"
