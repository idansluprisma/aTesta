resource "aws_instance" "test" {
  count = "-5"
  tags = {
    yor_trace = "da27775a-48ba-4090-88e6-183448f932d0"
  }
}
