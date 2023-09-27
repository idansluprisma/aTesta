resource "aws_instance" "foo" {
  count = "${list}"
  tags = {
    git_org = "idansluprisma"
  }
}
