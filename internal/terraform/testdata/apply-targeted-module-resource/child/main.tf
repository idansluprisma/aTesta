resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d48f087e-1171-4cb5-8c08-9da4f1acecfd"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "69c199f4-4fa9-4f30-8dbc-c13692507d76"
  }
}
