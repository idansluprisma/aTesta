module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.bad}"
  tags = {
    yor_trace = "9f348218-9e5e-4fb7-9e81-22e1965ba97f"
  }
}
