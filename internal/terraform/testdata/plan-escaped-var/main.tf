resource "aws_instance" "foo" {
  foo = "bar-$${baz}"
  tags = {
    git_org = "idansluprisma"
  }
}
