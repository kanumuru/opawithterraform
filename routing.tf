resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.stack-example-vpc.id

  tags = {
    department = "Learning"
    owner      = "ASE"
  }

}
