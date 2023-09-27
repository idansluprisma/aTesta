resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    git_org = "idansluprisma"
  }
}
