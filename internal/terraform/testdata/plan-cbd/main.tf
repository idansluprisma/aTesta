resource "aws_instance" "foo" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "11b34550-77ed-4424-93c2-1c0c27c47979"
  }
}
