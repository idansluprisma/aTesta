variable "value" {}

resource "aws_instance" "bar" {
  foo = "${var.value}"
  tags = {
    git_org = "idansluprisma"
  }
}
