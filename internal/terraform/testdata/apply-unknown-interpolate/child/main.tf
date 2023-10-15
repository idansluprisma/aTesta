variable "value" {}

resource "aws_instance" "bar" {
  foo = "${var.value}"
  tags = {
    yor_trace = "955a1d28-5406-489f-821a-f0ed26b1cf2a"
  }
}
