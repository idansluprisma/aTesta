variable "instance_count" {}

resource "aws_instance" "one" {
  count = var.instance_count
  tags = {
    yor_trace = "99aac8ee-4f34-4b43-9448-719949a9595c"
  }
}

locals {
  one_id = element(concat(aws_instance.one.*.id, [""]), 0)
}

resource "aws_instance" "two" {
  value = local.one_id
  tags = {
    yor_trace = "439af143-60b0-4052-bb20-433be101dda6"
  }
}
