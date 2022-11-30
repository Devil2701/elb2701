resource "aws_launch_configuration" "web" {
  name_prefix = "web-"
image_id = "ami-097a2df4ac947655f" 
  instance_type = "t2.micro"
  key_name = "ohio-key"
  security_groups = [ "${aws_security_group.demosg1.id}" ]
  associate_public_ip_address = true
  user_data = "${file("script.sh")}"
lifecycle {
    create_before_destroy = true
  }
}