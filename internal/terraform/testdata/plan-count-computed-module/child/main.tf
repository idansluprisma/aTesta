variable "value" {}

resource "aws_instance" "bar" {
  count = "${var.value}"
  tags = {
    git_org = "idansluprisma"
  }
}
