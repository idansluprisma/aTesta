variable "foo" {}
variable "bar" {}

resource "aws_instance" "foo" {
  count = 2
  num   = var.foo
  bar   = "baz" #var.bar
  tags = {
    yor_trace = "b730b1fd-4f18-4768-833e-a89916deac38"
  }
}

output "out" {
  value = aws_instance.foo[0].id
}
