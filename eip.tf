#Allocate elastic ip address
resource "aws_eip" "nat_eip" {
  vpc      = true
}