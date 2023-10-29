resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    git_org = "idansluprisma"
  }
}

variable "ids" {
  type = list(string)
}
