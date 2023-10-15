resource "do_instance" "foo" {
  num = "2"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "def24ab7-fe44-4572-a15b-d396ccf69f17"
  }
}
