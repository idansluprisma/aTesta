resource "aws_instance" "foo" {
  num = "2"

  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    git_org = "idansluprisma"
  }
}
