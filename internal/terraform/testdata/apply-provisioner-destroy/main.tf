resource "aws_instance" "foo" {
  for_each = var.input
  foo      = "bar"

  provisioner "shell" {
    command = "create ${each.key} ${each.value}"
  }

  provisioner "shell" {
    when    = "destroy"
    command = "destroy ${each.key} ${self.foo}"
  }
  tags = {
    yor_trace = "a29f4c78-ce9c-4446-83c5-ef831c653415"
  }
}

variable "input" {
  type    = map(string)
  default = {}
}
