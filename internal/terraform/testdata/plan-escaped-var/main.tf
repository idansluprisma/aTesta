resource "aws_instance" "foo" {
  foo = "bar-$${baz}"
  tags = {
    yor_trace = "e75d8f23-2743-425b-b866-79d0caad19a0"
  }
}
