provider "aws" {
  from = "child"
  to   = "child"
}

resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "b0476dba-9949-4a72-b435-e215df6f36aa"
  }
}
