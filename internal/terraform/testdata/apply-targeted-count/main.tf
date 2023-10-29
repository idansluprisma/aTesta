resource "aws_instance" "foo" {
  count = 3
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  count = 3
  tags = {
    git_org = "idansluprisma"
  }
}
