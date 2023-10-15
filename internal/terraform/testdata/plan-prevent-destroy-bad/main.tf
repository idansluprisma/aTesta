resource "aws_instance" "foo" {
  require_new = "yes"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "092de038-beaa-41f6-90da-31e3758a2e07"
  }
}
