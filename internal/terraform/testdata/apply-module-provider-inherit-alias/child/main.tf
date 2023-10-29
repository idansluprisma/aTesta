provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    git_org = "idansluprisma"
  }
}
