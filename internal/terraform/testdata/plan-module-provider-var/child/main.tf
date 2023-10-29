variable "foo" {}

provider "aws" {
  value = "${var.foo}"
}

resource "aws_instance" "test" {
  value = "hello"
  tags = {
    git_org = "idansluprisma"
  }
}
