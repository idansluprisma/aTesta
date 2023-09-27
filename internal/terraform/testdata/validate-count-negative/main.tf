resource "aws_instance" "test" {
  count = "-5"
  tags = {
    git_org = "idansluprisma"
  }
}
