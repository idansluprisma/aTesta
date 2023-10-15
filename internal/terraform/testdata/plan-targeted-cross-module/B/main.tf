variable "input" {}

resource "aws_instance" "bar" {
  foo = "${var.input}"
  tags = {
    yor_trace = "8ac59cd2-e05a-4bc0-b7c7-2be53c5a8989"
  }
}
