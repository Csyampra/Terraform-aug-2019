resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags = {
    Name = "${var.public_rt_name}"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
    Name = "${var.private_rt_name}"
  }
}

resource "aws_route_table_association" "public" {
  count          = "${length(var.pubic_subnet_cidr)}"
  subnet_id      = "${aws_subnet.pubic_subnet.*.id[count.index]}"
  route_table_id = "${aws_route_table.public_rt.id}"
}
resource "aws_route_table_association" "private" {
  count          = "${length(var.private_subnet_cidr)}"
  subnet_id      = "${aws_subnet.private_subnet.*.id[count.index]}"
  route_table_id = "${aws_route_table.private_rt.id}"
}
