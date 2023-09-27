variable "input" {}

resource "aws_instance" "bar" {
  foo = "${var.input}"
  tags = {
    git_org = "idansluprisma"
  }
}
