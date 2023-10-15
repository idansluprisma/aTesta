variable "string" {
  default = "foo"
  type    = string
}

variable "list" {
  default = []
  type    = list(string)
}

variable "map" {
  default = {}
  type    = map(string)
}

resource "aws_instance" "bar" {
  string = var.string
  list   = var.list
  map    = var.map
  tags = {
    yor_trace = "4c995a68-23fa-424f-a3ff-8d91c4ab818c"
  }
}
