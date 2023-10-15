module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    yor_trace = "acf3d046-6621-4c79-94ca-55f000103bff"
  }
}
