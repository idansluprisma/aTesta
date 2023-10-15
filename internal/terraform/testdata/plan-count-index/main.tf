resource "aws_instance" "foo" {
  count = 2
  foo   = "${count.index}"
  tags = {
    yor_trace = "262d7fc2-8a9d-4bbb-a582-74d2c063a5ce"
  }
}
