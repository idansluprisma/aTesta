resource "aws_instance" "foo" {
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  tags = {
    git_org = "idansluprisma"
  }
}
