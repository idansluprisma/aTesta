resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "6de8bce3-b789-4fc1-8133-9d633afdc165"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  foo = "${aws_instance.foo.id}"
  tags = {
    yor_trace = "57712662-d7bf-4dc5-9b29-f1cec8a13d97"
  }
}
