variable "region" {
  description = "RegionReference"
  default     = "us-east-2"
}

variable "vpc_full_cidr_block" {
  description = "VPC Full CIDR block"
  default     = "192.168.0.0/16"
}

variable "zonea_public_subnet_cidr_block" {
  description = "Primary Zone A Public Subnet"
  default     = "192.168.1.0/24"
}

variable "zonea_private_subnet_cidr_block" {
  description = "Primary Zone A Private Subnet"
  default     = "192.168.2.0/24"
}

variable "zoneb_public_subnet_cidr_block" {
  description = "Secondary Zone B Public Subnet"
  default     = "192.168.3.0/24"
}

variable "zoneb_private_subnet_cidr_block" {
  description = "Secondary Zone B Private Subnet"
  default     = "192.168.4.0/24"
}

variable "ami_map" {
  description = "Mapping of AMI based on Env"
  type        = map(string)
  default = {
    "dev"  = "ami-033fabdd332044f06" # For Dev Env, include Amazon Linux AMI
    "prod" = "ami-0f30a9c3a48f3fa79" # For Prod Env, include UBUNTU AMI
  }
}

#variable "ami" {
  #description = "Image for AutoScaling Groups"
  #default     = "ami-09040d770ffe2224f"
#}

variable "instance_type" {
  description = "Instance Type for AutoScaling Groups Instances"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key Pair used for AutoScaling Groups Instances"
  default     = "kp"
}


variable "env" {
  description = "Selection for available Env"
  default     = "dev"
}