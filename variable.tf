variable "vpc_cidr" {
 type        = string
  default    = ["10.0.0.0/16"]
}




variable "public_subnet_cidrs" {
 type        = list
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
