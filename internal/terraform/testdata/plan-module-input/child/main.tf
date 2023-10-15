variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "3cd380d1-efb0-452e-a83d-b09fa8adc153"
  }
}
