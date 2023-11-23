# Defining Region
variable "aws_region" {
  default = "ap-southeast-1"
}

# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# Defining CIDR Block for Subnet
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

# Defining CIDR Block for 2d Subnet
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}

# Defining AMI
variable "ami" {
  default = {
    ap-southeast-1 = "ami-078c1149d8ad719a7"
  }
}

# Defining Instace Type
variable "instancetype" {
  default = "t2.micro"
}

# Defining Master count 
variable "master_count" {
  default = 3
}
