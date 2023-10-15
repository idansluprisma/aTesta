terraform {
  required_providers {
    your-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "your-aws"
  tags = {
    yor_trace = "c5ef36af-5eb0-48ac-8d3a-80bf24a41665"
  }
}
