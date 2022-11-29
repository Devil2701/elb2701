resource "aws_instance" "myFirstInstance" {
  subnet_id= "${aws_subnet.prod-subnet-public-2.id}"  
  ami           = "ami-097a2df4ac947655f"
  key_name = "ohio-key"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  tags= {
    Name = "EC2-userdata1"
  }
  user_data = file("script.sh")
}
resource "aws_instance" "mysecomdInstance" {
  subnet_id= "${aws_subnet.prod-subnet-public-1.id}"  
  ami           = "ami-097a2df4ac947655f"
  key_name = "ohio-key"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  tags= {
    Name = "EC2-userdata2"
  }
  user_data = file("script.sh")
}
