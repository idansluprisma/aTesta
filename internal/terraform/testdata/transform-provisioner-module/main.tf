resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    git_org = "idansluprisma"
  }
}

module "child" {
  source = "./child"
}
