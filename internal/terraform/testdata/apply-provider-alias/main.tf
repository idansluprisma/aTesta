provider "aws" {
  alias = "bar"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo      = "bar"
  provider = "aws.bar"
  tags = {
    git_org = "idansluprisma"
  }
}
