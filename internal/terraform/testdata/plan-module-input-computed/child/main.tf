variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "a8df9a34-0a4e-4c73-a757-6b98dc99933e"
  }
}
