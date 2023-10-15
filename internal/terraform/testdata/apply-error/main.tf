resource "aws_instance" "foo" {
  value = "2"
  tags = {
    yor_trace = "0f4b282e-e410-4d9e-85f9-35cd5d175554"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "c33acd9e-3f23-4738-9832-8cf78af05a58"
  }
}
