variable "sensitive_var" {
  default   = "foo"
  sensitive = true
}

resource "aws_instance" "foo" {
  foo = var.sensitive_var
  tags = {
    git_org = "idansluprisma"
  }
}