resource "aws_instance" "foo" {
  foo = "foo"
  tags = {
    yor_trace = "37aa8598-62fa-40c0-89d0-1e838ac9eee6"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "af684097-41b1-43c2-8c43-3f01fbebf881"
  }
}
