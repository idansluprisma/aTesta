variable "list" {
  type = list(string)
}

resource "aws_instance" "bar" {
  count = var.list[0]
  tags = {
    yor_trace = "9a75ab6a-c623-406c-817d-fdacb5783cec"
  }
}
