variable "destin" {}

resource "aws_instance" "dest" {
  attr = "${var.destin}"
  tags = {
    git_org = "idansluprisma"
  }
}
