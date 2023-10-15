provider "aws" {
  alias = "bar"
}

resource "aws_instance" "thing" {
  provider = aws.bar
  tags = {
    yor_trace = "ad554732-c018-4076-9e23-f81cefc724c3"
  }
}
