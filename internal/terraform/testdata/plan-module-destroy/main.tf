module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "b49d7d34-cb68-4399-8069-db4ba63dd621"
  }
}
