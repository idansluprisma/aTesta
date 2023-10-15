provider "aws" {
  alias = "baz"
}

resource "aws_instance" "baz" {
  provider = "aws.baz"
  tags = {
    yor_trace = "8e8a2608-f24a-4669-8bfe-ee6eca9d9e04"
  }
}
