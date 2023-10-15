module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    yor_trace = "d496637e-e8b6-40b0-8307-a6aa24cc93ea"
  }
}
