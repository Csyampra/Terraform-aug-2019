variable "vpc_cidr" {}

variable "vpc_name" {
  default = "CITY_VPC"
}
variable "region" {}

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
variable "igw_name" {
  default = "CITY_IGW"
}
variable "public_rt_name" {
  default = "CITY_PUBLIC_RT"
}
variable "private_rt_name" {
  type    = "string"
  default = "CITY_PRIVATE_RT"
}
variable "private_subnet_azs" {
  type    = "list"
  default = ["us-east-1a", "us-east-1b"]
}

variable "instance_ami" {
  type = "map"
  default = {
    us-east-1  = "ami-035b3c7efe6d061d5"
    us-east-2  = "ami-02f706d959cedf892"
    ap-south-1 = "ami-0b99c7725b9484f9e"
  }
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instance_count" {
  default = "1"
}
variable "Public_Instance_Name" {
  default = "Public_Instance"
}
variable "Private_Instance_Name" {
  default = "Private_Instance"
}
