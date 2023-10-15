variable "param" {
  type = list(string)
}

resource "aws_instance" "test" {
  count = "2"
  thing = "doesnt"
  tags = {
    yor_trace = "df9bfe50-afcc-47a5-9310-3a9e5cb4d8ae"
  }
}

output "out_from_splat" {
  value = aws_instance.test.*.thing
}
