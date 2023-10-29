resource "aws_instance" "foo" {
  tags = {
    git_org = "idansluprisma"
  }
}
