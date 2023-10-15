resource "aws_instance" "bar" {
  require_new = "xyz"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "70638141-b145-48b2-9067-5e3cfa89acb7"
  }
}
