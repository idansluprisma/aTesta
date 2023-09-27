resource "aws_instance" "foo" {
  id = "baz"
  tags = {
    git_org = "idansluprisma"
  }
}
