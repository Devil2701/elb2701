resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "terra_VPC"
  }
}

resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "us-east-2c"
    tags= {
        Name = "prod-subnet-public-1"
    }
}
resource "aws_subnet" "prod-subnet-public-2" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true" //it makes this a private subnet
    availability_zone = "us-east-2b"
    tags= {
        Name = "prod-subnet-public-2"
    }
}