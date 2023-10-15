resource "aws_instance" "baz" {
  foo = "bar"
  tags = {
    yor_trace = "446d7cf5-e054-4b4a-9b3a-4f4f2d6dfe2a"
  }
}
