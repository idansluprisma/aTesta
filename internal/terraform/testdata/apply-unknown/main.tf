resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "08c7ce19-0b5c-4bbb-9e5c-152730e9234e"
  }
}
