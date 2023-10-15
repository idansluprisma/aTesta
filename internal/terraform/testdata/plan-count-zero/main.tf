resource "aws_instance" "foo" {
  count = 0
  foo   = "foo"
  tags = {
    yor_trace = "2f8019ea-0b80-4b48-9737-ff12e672a585"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.*.foo}"
  tags = {
    yor_trace = "31a85901-874c-4526-bc19-d6db3b87f0fc"
  }
}
