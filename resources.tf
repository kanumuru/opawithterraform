# resource "random_string" "random_name" {
#   length  = 10
#   special = false
#   upper   = false
# }


# resource "aws_s3_bucket" "opa_bucket" {
#   bucket        = format("opa-encryption-%s", random_string.random_name.result)
#   acl           = "private"
#   force_destroy = true
# }



# resource "aws_subnet" "public-subnet" {
#   cidr_block        = var.public_subnet_cidr
#   vpc_id            = aws_vpc.stack-example-vpc.id
#   availability_zone = "us-west-2a"

#   tags = {
#     department = "Learning"
#   }
# }



# resource "aws_internet_gateway" "gateway" {
#   vpc_id = aws_vpc.stack-example-vpc.id

#   tags = {
#     department = "Learning"
#     owner      = "ASE"
#   }

# }


# resource "aws_vpc" "stack-example-vpc" {
#   cidr_block           = var.vpc_cidr
#   enable_dns_support   = true
#   enable_dns_hostnames = true
#   tags = {
#     owner = "ASE"
#   }
# }


## IaC according to OPA policy


resource "random_string" "random_name" {
  length  = 10
  special = false
  upper   = false
}


resource "aws_s3_bucket" "opa_bucket" {
  bucket        = "opa-encryption-testing-now-in-cicd"
  acl           = "private"
  force_destroy = true
    tags = {
    department = "Learning"
    owner      = "ASE"
  }
}



resource "aws_subnet" "public-subnet" {
  cidr_block        = var.public_subnet_cidr
  vpc_id            = aws_vpc.stack-example-vpc.id
  availability_zone = "us-west-2a"

  tags = {
    department = "Learning"
    owner      = "ASE"
  }
}



resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.stack-example-vpc.id

  tags = {
    department = "Learning"
    owner      = "ASE"
  }

}


resource "aws_vpc" "stack-example-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    department = "Learning"
    owner      = "ASE"
  }
}
