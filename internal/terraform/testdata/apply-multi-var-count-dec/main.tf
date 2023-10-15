variable "num" {}

resource "aws_instance" "foo" {
  count = "${var.num}"
  value = "foo"
  tags = {
    yor_trace = "e466e23f-6e67-4ccc-9d65-fc3714a7820d"
  }
}

resource "aws_instance" "bar" {
  ami = "special"

  value = "${join(",", aws_instance.foo.*.id)}"
  tags = {
    yor_trace = "5943510e-020c-4156-b0a5-de52381cc11b"
  }
}
