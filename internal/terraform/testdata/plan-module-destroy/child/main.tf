resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "f00f0025-a33a-46b2-91d9-a09555d10173"
  }
}
