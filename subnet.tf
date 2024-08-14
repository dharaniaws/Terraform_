resource "aws_subnet" "public_subnet-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"
  tags = {
    Name = "web subnet 1"
  }
}

resource "aws_subnet" "public_subnet-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"
  tags = {
    Name = "web subnet 2"
  }
}

resource "aws_subnet" "application_subnet-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2a"
  tags = {
    Name = "appilcation subnet 1"
  }
}

resource "aws_subnet" "application_subnet-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet3_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2b"
  tags = {
    Name = "appilcation subnet 2"
  }
}

resource "aws_subnet" "database_subnet-1" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = var.subnet4_cidr
  availability_zone = "us-east-2a"
  tags = {
    Name = "database subnet 1"
  }
}

resource "aws_subnet" "database_subnet-2" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = var.subnet5_cidr
  availability_zone = "us-east-2b"
  tags = {
    Name = "database subnet 2"
  }
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}

variable "subnet2_cidr" {
  default = "10.0.3.0/24"
}

variable "subnet3_cidr" {
  default = "10.0.4.0/24"
}

variable "subnet4_cidr" {
  default = "10.0.5.0/24"
}

variable "subnet5_cidr" {
  default = "10.0.6.0/24"
}
