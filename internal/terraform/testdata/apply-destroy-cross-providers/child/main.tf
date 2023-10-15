variable "value" {}

resource "aws_vpc" "bar" {
  value = "${var.value}"
  tags = {
    yor_trace = "95c2f1b1-2f1f-4215-a76f-90039c6c34f4"
  }
}
