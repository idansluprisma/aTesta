variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    git_org = "idansluprisma"
  }
}
