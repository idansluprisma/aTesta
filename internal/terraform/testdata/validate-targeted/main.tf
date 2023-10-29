resource "aws_instance" "foo" {
  num = "2"
  provisioner "shell" {}
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    git_org = "idansluprisma"
  }
}
