variable "instance_count" {
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "ebeee802-3df1-481e-bd82-92b6e4b7158a"
  }
}

module "submod" {
  source = "./submod"
  list   = ["${aws_instance.foo.*.id}"]
}
