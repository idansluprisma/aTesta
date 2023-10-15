# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "84b24fe2-a262-42ba-8f74-6184f44a88e9"
  }
}

module "nested" {
  source = "./submodule"
}
