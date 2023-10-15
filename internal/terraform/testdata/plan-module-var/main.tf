module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.num}"
  tags = {
    yor_trace = "e732d496-3f9c-4340-96f2-cd65557a2f89"
  }
}
