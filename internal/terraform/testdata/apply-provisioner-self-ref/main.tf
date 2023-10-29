resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    git_org = "idansluprisma"
  }
}
