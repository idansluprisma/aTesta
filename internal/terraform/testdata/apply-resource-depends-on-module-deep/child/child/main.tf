resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    git_org = "idansluprisma"
  }
}
