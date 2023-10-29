resource "aws_instance" "foo" {
  foo = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}
