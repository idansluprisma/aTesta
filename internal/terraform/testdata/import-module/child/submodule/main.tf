resource "aws_instance" "foo" {
  id = "baz"
  tags = {
    yor_trace = "3c4d96e1-2943-4fa1-8c03-af5401b7ea98"
  }
}
