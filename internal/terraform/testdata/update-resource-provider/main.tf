provider "aws" {
  alias = "foo"
}

resource "aws_instance" "bar" {
  provider = "aws.foo"
  tags = {
    yor_trace = "efaf801f-7d63-4f58-bc98-23f4ab389389"
  }
}
