module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.good}"
  tags = {
    yor_trace = "3554cd1e-3986-4e83-896e-f4645c98182b"
  }
}
