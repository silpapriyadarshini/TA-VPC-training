resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_public
  availability_zone = "eu-west-1a"

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_private
  availability_zone = "eu-west-1a"

  tags = {
    Name = "private"
  }
}

resource "aws_subnet" "data" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_data
  availability_zone = "eu-west-1a"

  tags = {
    Name = "data"
  }
}

#for rds backup
resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_public1
  availability_zone = "eu-west-1b"

  tags = {
    Name = "public1"
  }
}

#used for rds instance
resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_private1
  availability_zone = "eu-west-1b"

  tags = {
    Name = "private1"
  }
}

#used for rds instance
resource "aws_subnet" "data1" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_data1
  availability_zone = "eu-west-1b"

  tags = {
    Name = "data1"
  }
}