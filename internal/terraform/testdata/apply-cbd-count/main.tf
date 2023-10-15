resource "aws_instance" "bar" {
  count = 2
  foo   = "bar"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "dd7b0efc-004c-4ea2-9435-734a28198de9"
  }
}
