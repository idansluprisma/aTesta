provider "aws" {
  region = "${local.foo}"
}

locals {
  foo = "bar"
}

resource "aws_instance" "foo" {
  value = "${local.foo}"
  tags = {
    yor_trace = "68f4617b-7e05-4da0-b053-df3a54ec26a1"
  }
}
