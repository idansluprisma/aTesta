provider "aws" {
  alias = "baz"
}

resource "aws_instance" "baz" {
  provider = "aws.baz"
  tags = {
    git_org = "idansluprisma"
  }
}
