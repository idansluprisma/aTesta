resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    git_org = "idansluprisma"
  }
}
