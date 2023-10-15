variable "foo" {}

variable "bar" {}

resource "aws_instance" "foo" {
  ami      = "${var.foo}"
  instance = "${var.bar}"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "5ed286f7-e6d3-4ad8-9b2a-706ee3e1be1a"
  }
}
