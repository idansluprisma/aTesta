variable "value" {}

resource "aws_instance" "bar" {
  count = "${var.value}"
  tags = {
    yor_trace = "6e4db81e-bbaf-4761-97e9-769d754f5a10"
  }
}
