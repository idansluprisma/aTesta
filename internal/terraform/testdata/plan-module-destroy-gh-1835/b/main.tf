variable "a_id" {}

resource "aws_instance" "b" {
  foo = "echo ${var.a_id}"
  tags = {
    git_org = "idansluprisma"
  }
}
