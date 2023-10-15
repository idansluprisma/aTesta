resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "d49a98bf-0e40-4578-8b44-819813e33481"
  }
}
