module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "406dca67-44ac-4edb-a53c-4a4b0a247e06"
  }
}
