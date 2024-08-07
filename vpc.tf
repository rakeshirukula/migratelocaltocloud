resource "aws_vpc" "example" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "example" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example.id

  tags = {
    Name = "tf-example"
  }
  key_name = "OLDMONK"
}


resource "aws_subnet" "example2" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "172.16.9.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "tf2-example"
  }
}

