resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = ["required_field"]
  }
  tags = {
    yor_trace = "6fed3637-68d2-40dc-b676-248d6b0a0dbb"
  }
}
