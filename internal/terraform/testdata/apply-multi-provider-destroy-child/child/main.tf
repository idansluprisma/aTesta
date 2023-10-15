resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "915d4d3a-a52d-493b-9d13-760f137d6fd5"
  }
}
