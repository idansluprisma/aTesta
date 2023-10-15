variable "foo" {}

locals {
  baz = "baz-${var.foo}"
}

provider "aws" {
  foo = "${local.baz}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "f653e957-3308-4de4-b421-30560b767e73"
  }
}
