variable "list" {
  default = ["1", "2"]
}

resource "aws_instance" "a" {
  count = length(var.list)
  tags = {
    yor_trace = "4ab49bdf-1129-4f85-b690-7266d55e1357"
  }
}

locals {
  ids = aws_instance.a[*].id
}

module "empty" {
  source = "./mod"
  input  = zipmap(var.list, local.ids)
}

output "out" {
  value = aws_instance.a[*].id
}
