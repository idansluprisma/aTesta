resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    yor_trace = "389b74ca-b84a-4de2-b5ff-afced55eeae2"
  }
}

variable "ids" {
  type = list(string)
}
