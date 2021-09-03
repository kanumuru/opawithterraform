resource "aws_subnet" "public-subnet" {
  cidr_block        = var.public_subnet_cidr
  vpc_id            = aws_vpc.stack-example-vpc.id
  availability_zone = "us-west-2a"

  tags = {
    department = "Learning"
  }
}

