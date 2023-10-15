variable "input" {
  type = string
}

resource "aws_instance" "foo" {
  foo = var.input
  tags = {
    yor_trace = "d14c6ea0-4e2a-4bfa-90cb-a6583aa75437"
  }
}

output "foo" {
  value = aws_instance.foo.foo
}
