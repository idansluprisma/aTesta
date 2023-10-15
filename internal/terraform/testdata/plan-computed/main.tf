resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "0256656b-6926-4ee5-87dc-386a2028c6b6"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.foo}"
  tags = {
    yor_trace = "aa535b1a-5f7b-4567-a9d3-cb68e4fed3bf"
  }
}
