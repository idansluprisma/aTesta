resource "aws_instance" "bar" {
  require_new = "xyz"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "73b1aa08-d534-47ea-90cf-040ea1b379ea"
  }
}
