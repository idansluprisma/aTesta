resource "aws_instance" "foo" {
  num = "2"
  foo = "bar"
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
