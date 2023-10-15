terraform {
  required_providers {
    my-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "my-aws"
  tags = {
    yor_trace = "1d442fcc-45cf-4c3a-a3df-0e6ff7ef8363"
  }
}
