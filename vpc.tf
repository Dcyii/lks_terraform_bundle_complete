
resource "aws_vpc" "lks_vpc" {
  cidr_block = "15.32.0.0/16"
  tags = {
    Name = "lks-vpc"
  }
}

resource "aws_subnet" "public_1" {
  vpc_id            = aws_vpc.lks_vpc.id
  cidr_block        = "15.32.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.lks_vpc.id
  cidr_block        = "15.32.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.lks_vpc.id
  cidr_block        = "15.32.10.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private_1b" {
  vpc_id            = aws_vpc.lks_vpc.id
  cidr_block        = "15.32.11.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "private_2a" {
  vpc_id            = aws_vpc.lks_vpc.id
  cidr_block        = "15.32.12.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private_2b" {
  vpc_id            = aws_vpc.lks_vpc.id
  cidr_block        = "15.32.13.0/24"
  availability_zone = "us-east-1b"
}
