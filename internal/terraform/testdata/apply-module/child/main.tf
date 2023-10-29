resource "aws_instance" "baz" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}
