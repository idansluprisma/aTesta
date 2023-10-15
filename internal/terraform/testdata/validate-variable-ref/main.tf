variable "foo" {}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "0026fa26-7ad9-41db-adbc-e020b2b7d9e9"
  }
}
