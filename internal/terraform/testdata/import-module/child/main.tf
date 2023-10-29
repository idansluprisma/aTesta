# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}

module "nested" {
  source = "./submodule"
}
