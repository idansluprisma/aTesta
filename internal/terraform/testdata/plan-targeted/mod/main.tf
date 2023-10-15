resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "ba3f8cc1-3067-4dc8-8e13-04883eb776f4"
  }
}
