variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    yor_trace = "bc2ae363-a3ec-4bd8-8524-d6593d7d2615"
  }
}
