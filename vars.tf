variable "vpc_cidr" {
  default = "123.146.0.0/16"
}

variable "vpc_name" {
  default = "CITY_VPC"
}
variable "region" {
  default = "us-east-1"
}

variable "pubic_subnet_cidr" {
  type    = "list"
  default = ["123.146.0.0/25", "123.146.1.0/25"]
}
variable "pubic_subnet_azs" {
  type    = "list"
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_subnet_cidr" {
  type    = "list"
  default = ["123.146.2.0/25", "123.146.3.0/25"]
}
variable "private_subnet_azs" {
  type    = "list"
  default = ["us-east-1a", "us-east-1b"]
}
variable "igw_name" {
  default = "CITY_IGW"
}
variable "public_rt_name" {
  default = "CITY_PUBLIC_RT"
}
variable "private_rt_name" {
  default = "CITY_PRIVATE_RT"
}
