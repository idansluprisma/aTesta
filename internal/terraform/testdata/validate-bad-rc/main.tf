resource "aws_instance" "test" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}
