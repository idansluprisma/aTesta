output "output" {
  value = "${aws_instance.foo.foo}"
}

resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "c6a6911d-813b-40d5-b050-79cb3771f224"
  }
}
