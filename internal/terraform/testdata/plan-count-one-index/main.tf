resource "aws_instance" "foo" {
  count = 1
  foo   = "foo"
  tags = {
    yor_trace = "5c1c37be-7814-4848-8415-d96b2736eb10"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.0.foo}"
  tags = {
    yor_trace = "40208ca8-a913-4346-a2a0-d406e272e901"
  }
}
