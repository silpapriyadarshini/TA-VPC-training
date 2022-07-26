resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_public

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_private

  tags = {
    Name = "private"
  }
}

resource "aws_subnet" "data" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_data

  tags = {
    Name = "data"
  }
}

#used for rds instance
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_private1
  availability_zone = "eu-west-1a"
  
  tags = {
    Name = "private1"
  }
}

#used for rds instance
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_private2
  availability_zone = "eu-west-1b"

  tags = {
    Name = "private2"
  }
}