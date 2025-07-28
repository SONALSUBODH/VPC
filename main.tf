resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr

  tags = {
    Name = "Project VPC"
  }
}

resource "aws_subnet" "public_subnet" {
  count      = length(var.public_subnet_Cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnet_Cidr, count.index)
  tags = {
    Name = "Public_Subnet-${count.index + 1}"
  }
}




