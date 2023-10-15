resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    yor_trace = "ef655997-1bec-4de1-95c5-a9d98660ddf4"
  }
}

variable "ids" {
  type = list(string)
}
