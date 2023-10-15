provider "aws" {
  alias = "mod"
}

resource "aws_instance" "bar" {
  provider = "aws.mod"
  tags = {
    yor_trace = "fafea2b3-aed7-4c06-8a1d-00dec43f5aaf"
  }
}
