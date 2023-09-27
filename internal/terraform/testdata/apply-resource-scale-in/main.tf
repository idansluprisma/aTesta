variable "instance_count" {}

resource "aws_instance" "one" {
  count = var.instance_count
  tags = {
    git_org = "idansluprisma"
  }
}

locals {
  one_id = element(concat(aws_instance.one.*.id, [""]), 0)
}

resource "aws_instance" "two" {
  value = local.one_id
  tags = {
    git_org = "idansluprisma"
  }
}
