resource "aws_instance" "bar" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "5e7be348-8cc6-476e-b7a7-4d44b8e9ec94"
  }
}
