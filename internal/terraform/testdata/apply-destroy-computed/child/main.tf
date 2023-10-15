variable "value" {}

resource "aws_instance" "bar" {
  value = "${var.value}"
  tags = {
    yor_trace = "7a2fe2d4-229a-4c14-a146-67f3961bd0bd"
  }
}
