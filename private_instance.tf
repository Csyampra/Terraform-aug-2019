resource "aws_instance" "private_instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.instance_ami, var.region)}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${aws_subnet.private_subnet.*.id[1]}"
  #associate_public_ip_address = "true"
  vpc_security_group_ids = ["${aws_security_group.security.id}"]
  key_name               = "${aws_key_pair.key_pair.key_name}"
  tags = {
    Name = "${var.Private_Instance_Name}"
  }

}
