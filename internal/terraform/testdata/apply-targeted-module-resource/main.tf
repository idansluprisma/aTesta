module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}
