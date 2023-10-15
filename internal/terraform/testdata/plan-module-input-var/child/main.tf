variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "d41a746c-ca8d-456c-bcf5-be5c369f321a"
  }
}
