resource "aws_instance" "child" {
  ami = "child"
  tags = {
    git_org = "idansluprisma"
  }
}
