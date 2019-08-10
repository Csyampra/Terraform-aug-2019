resource "aws_subnet" "pubic_subnet" {
  count             = "${length(var.pubic_subnet_cidr)}"
  vpc_id            = "${aws_vpc.myvpc.id}"
  cidr_block        = "${element(var.pubic_subnet_cidr, count.index)}"
  availability_zone = "${element(var.pubic_subnet_azs, count.index)}"
  tags = {
    Name = "Public_subnets-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnet" {
  count             = "${length(var.private_subnet_cidr)}"
  vpc_id            = "${aws_vpc.myvpc.id}"
  cidr_block        = "${element(var.private_subnet_cidr, count.index)}"
  availability_zone = "${element(var.private_subnet_azs, count.index)}"
  tags = {
    Name = "Private_subnets-${count.index + 1}"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
    Name = "${var.igw_name}"
  }
}
