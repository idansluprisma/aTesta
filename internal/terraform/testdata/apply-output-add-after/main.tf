provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    yor_trace = "60d4b2b4-f892-4ea0-90b3-f1ed007d78ca"
  }
}
