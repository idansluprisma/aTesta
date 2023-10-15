provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    yor_trace = "9b5a8355-8637-4cb0-bebd-314be1ef008c"
  }
}
