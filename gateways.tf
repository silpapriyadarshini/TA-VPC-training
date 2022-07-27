resource "aws_internet_gateway" "igw" {
  vpc_id  = aws_vpc.lab_vpc.id
  tags = {
    Name  = "igw"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id     = aws_eip.nat_eip.id
  subnet_id         = aws_subnet.public.id
  tags = {
    Name = "nat-gateway"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}