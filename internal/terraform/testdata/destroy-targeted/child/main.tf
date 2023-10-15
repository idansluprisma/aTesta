variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    yor_trace = "9d98a87b-e71b-4b41-b684-c84c1e0d9b5a"
  }
}

output "out" {
  value = var.in
}
