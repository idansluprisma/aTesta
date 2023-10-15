module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "3837ed7e-c86e-4720-85bf-d958fecfc78e"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "4a8a65b7-d280-4954-a9f3-71e1e013334f"
  }
}
