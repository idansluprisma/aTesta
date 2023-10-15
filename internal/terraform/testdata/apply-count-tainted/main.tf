resource "aws_instance" "foo" {
  count = 2
  foo   = "foo"
  tags = {
    yor_trace = "a5dd6b60-78f6-4eca-8d00-1d0aa2f6f45b"
  }
}
