resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "311c60cf-f34d-4b02-86e2-3b99b4b58509"
  }
}

output "num" {
  value = "${aws_instance.foo.num}"
}
