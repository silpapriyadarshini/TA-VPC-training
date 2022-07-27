resource "aws_vpc" "lab_vpc" {
    cidr_block  = var.vpc_cidr
    instance_tenancy = "default"
    tags = {
        Name    = var.vpc_name
    }
}

resource "aws_internet_gateway" "igw" {
  vpc_id  = aws_vpc.lab_vpc.id
  tags = {
    Name  = "igw"
  }
}

#Allocate elastic ip address
resource "aws_eip" "nat_eip1" {
  vpc      = true
}

resource "aws_eip" "nat_eip2" {
  vpc      = true
}

resource "aws_nat_gateway" "nat_gateway1" {
  allocation_id     = aws_eip.nat_eip1.id
  subnet_id  = aws_subnet.public.id
  tags = {
    Name = "nat_gateway1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "nat_gateway2" {
  allocation_id     = aws_eip.nat_eip2.id
  subnet_id  = aws_subnet.public1.id
  tags = {
    Name = "nat_gateway2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}