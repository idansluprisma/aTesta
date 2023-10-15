variable "num" {
}

resource "aws_instance" "foo" {
  count = "${var.num}"
  tags = {
    yor_trace = "0ad1afc5-d3b6-498f-b6f1-7efe237c4328"
  }
}
