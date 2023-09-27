resource "aws_instance" "foo" {
  from = "child"
  tags = {
    git_org = "idansluprisma"
  }
}
