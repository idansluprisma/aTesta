variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    yor_trace = "411e27e2-547c-42ec-b6b1-b96e7700fabf"
  }
}
