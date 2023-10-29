variable "input" {
  type = string
}

resource "aws_instance" "foo" {
  foo = var.input
  tags = {
    git_org = "idansluprisma"
  }
}

output "foo" {
  value = aws_instance.foo.foo
}
