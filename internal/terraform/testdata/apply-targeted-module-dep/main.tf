module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "${module.child.output}"
  tags = {
    git_org = "idansluprisma"
  }
}
