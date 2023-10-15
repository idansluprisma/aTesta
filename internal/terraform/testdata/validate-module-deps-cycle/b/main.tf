variable "input" {}

resource "aws_instance" "b" {
  id = "${var.input}"
  tags = {
    yor_trace = "034ad388-9963-4f59-a87c-4dc93c5aceb2"
  }
}
