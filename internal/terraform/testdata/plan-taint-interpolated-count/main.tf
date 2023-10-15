variable "instance_count" {
  default = 3
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "273f7378-8017-4e4e-82fe-5e125795e18c"
  }
}
