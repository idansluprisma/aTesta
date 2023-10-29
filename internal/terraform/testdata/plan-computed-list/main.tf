resource "aws_instance" "foo" {
  num     = "2"
  compute = "list.#"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.list.0
  tags = {
    git_org = "idansluprisma"
  }
}
