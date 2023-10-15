variable "foo" {}

provider "aws" {
  foo = "${var.foo}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "933ad2a8-4513-485f-bdd3-9e55bbc94105"
  }
}
