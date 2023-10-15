provider "aws" {
  from = "child"
  to   = "child"
}

resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "e133a25e-d806-4187-b409-2d2804af0769"
  }
}
