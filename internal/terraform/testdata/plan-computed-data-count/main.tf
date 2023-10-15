resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "d89dda7e-cdf4-4e84-84a1-cb0d89b760ba"
  }
}

data "aws_vpc" "bar" {
  count = 3
  foo   = "${aws_instance.foo.foo}"
}
