resource "aws_instance" "foo" {
  foo   = "foo"
  count = 3
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}
