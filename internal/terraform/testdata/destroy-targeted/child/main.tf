variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    git_org = "idansluprisma"
  }
}

output "out" {
  value = var.in
}
