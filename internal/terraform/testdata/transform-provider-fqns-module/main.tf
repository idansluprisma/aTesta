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
    yor_trace = "f983e25e-4e45-4c45-902d-4483e27d6ed2"
  }
}
