resource "aws_instance" "public_instance" {
  count                       = "${var.instance_count}"
  ami                         = "${lookup(var.instance_ami, var.region)}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.pubic_subnet.*.id[0]}"
  associate_public_ip_address = "true"
  vpc_security_group_ids      = ["${aws_security_group.security.id}"]
  key_name                    = "${aws_key_pair.key_pair.key_name}"
  user_data                   = "${file("scripts/apache.sh")}"
  tags = {
    Name = "${var.Public_Instance_Name}"
  }

}
