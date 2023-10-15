resource "aws_instance" "foo" {
  num = 42
  tags = {
    yor_trace = "e75c89ce-8031-43bd-adba-92dda5fd4f0c"
  }
}
