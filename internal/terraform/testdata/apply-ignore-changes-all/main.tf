resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "612b94de-e6ca-4ae5-a942-6c41ce58d5f6"
  }
}
