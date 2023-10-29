provider "aws" {
  foo = "bar"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}
