resource "aws_instance" "foo" {
  tags = {
    yor_trace = "76abedf8-67cc-4ffa-923f-b773201be5ea"
  }
}

resource "aws_instance" "bar" {
  tags = {
    yor_trace = "9ae01e0d-3942-4e81-a376-2dc530899926"
  }
}
