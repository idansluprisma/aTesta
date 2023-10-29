resource "aws_instance" "foo" {
  num = "3"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  num = aws_instance.foo.num
  tags = {
    git_org = "idansluprisma"
  }
}
