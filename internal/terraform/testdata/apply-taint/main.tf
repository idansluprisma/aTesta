resource "aws_instance" "bar" {
  num = "2"
  tags = {
    git_org = "idansluprisma"
  }
}
