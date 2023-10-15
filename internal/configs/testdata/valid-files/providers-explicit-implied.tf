provider "aws" {

}

provider "template" {
  alias = "foo"
}

resource "aws_instance" "foo" {

  tags = {
    yor_trace = "b499da0c-3277-4e65-a5ad-871984d4fd41"
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
