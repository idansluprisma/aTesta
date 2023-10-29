provider "aws" {

}

provider "template" {
  alias = "foo"
}

resource "aws_instance" "foo" {

  tags = {
    git_org = "idansluprisma"
  }
}

resource "null_resource" "foo" {

}

terraform {
  required_providers {
    test = {
      source = "hashicorp/test"
    }
  }
}
