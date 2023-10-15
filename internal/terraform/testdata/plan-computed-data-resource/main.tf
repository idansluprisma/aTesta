resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "81895e72-d6c8-41d6-9717-d33ed5412764"
  }
}

data "aws_vpc" "bar" {
  foo = "${aws_instance.foo.foo}"
}
