resource "aws_instance" "foo" {
  vars = "foo"

  lifecycle {
    ignore_changes = ["vars"]
  }
  tags = {
    yor_trace = "27d966a7-4138-4422-b0fe-f770c8d19e85"
  }
}
