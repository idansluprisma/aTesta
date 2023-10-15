provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    yor_trace = "9aea6858-9e82-4d41-ab79-d55bf338c150"
  }
}
