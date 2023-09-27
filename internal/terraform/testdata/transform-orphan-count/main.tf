resource "aws_instance" "foo" {
  count = 3
  tags = {
    git_org = "idansluprisma"
  }
}
