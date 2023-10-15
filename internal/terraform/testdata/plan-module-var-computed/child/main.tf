resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "cdce9e12-756c-466c-87ea-7ced9a658611"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
