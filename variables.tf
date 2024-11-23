variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "password123"
}
