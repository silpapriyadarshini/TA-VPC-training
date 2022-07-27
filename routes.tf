resource "aws_route_table" "internet_route_table" {
  vpc_id = aws_vpc.lab_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "internet-route-table"
  }
}

resource "aws_route_table" "nat_route_table1" {
  vpc_id = aws_vpc.lab_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway1.id
  }

  tags = {
    Name = "nat-route-table1"
  }
}

resource "aws_route_table" "nat_route_table2" {
  vpc_id = aws_vpc.lab_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway2.id
  }

  tags = {
    Name = "nat-route-table2"
  }
}

resource "aws_route_table_association" "public" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.internet_route_table.id
}

resource "aws_route_table_association" "private" {
    subnet_id = aws_subnet.private.id
    route_table_id = aws_route_table.nat_route_table1.id
}

resource "aws_route_table_association" "data" {
    subnet_id = aws_subnet.data.id
    route_table_id = aws_route_table.nat_route_table1.id
}

resource "aws_route_table_association" "public1" {
    subnet_id = aws_subnet.public1.id
    route_table_id = aws_route_table.internet_route_table.id
}

resource "aws_route_table_association" "private1" {
    subnet_id = aws_subnet.private1.id
    route_table_id = aws_route_table.nat_route_table2.id
}

resource "aws_route_table_association" "data1" {
    subnet_id = aws_subnet.data1.id
    route_table_id = aws_route_table.nat_route_table2.id
}