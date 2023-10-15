variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    yor_trace = "483832fa-8e56-4013-b369-9b6ffc46f314"
  }
}
