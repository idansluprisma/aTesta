provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    yor_trace = "582fec26-ec83-4b52-9813-1de6b0b58947"
  }
}
