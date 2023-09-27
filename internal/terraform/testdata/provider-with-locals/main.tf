provider "aws" {
  region = "${local.foo}"
}

locals {
  foo = "bar"
}

resource "aws_instance" "foo" {
  value = "${local.foo}"
  tags = {
    git_org = "idansluprisma"
  }
}
