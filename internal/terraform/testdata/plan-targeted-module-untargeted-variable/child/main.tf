variable "id" {}

resource "aws_instance" "mod" {
  value = "${var.id}"
  tags = {
    yor_trace = "4fcf85ce-587d-4a9b-8c10-4a83a7d61c05"
  }
}
