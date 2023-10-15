resource "aws_instance" "foo" {
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "bf686256-9fe2-4d90-bfb3-906c40a1b213"
  }
}
