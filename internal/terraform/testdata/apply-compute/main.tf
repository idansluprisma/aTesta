variable "value" {
  default = ""
}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    git_org = "idansluprisma"
  }
}
