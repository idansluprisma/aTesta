module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "${module.child.output}"
  tags = {
    yor_trace = "4a4f61e1-36e7-4213-a5e8-1e975ee939dc"
  }
}
