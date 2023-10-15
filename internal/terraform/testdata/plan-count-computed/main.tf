resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "a6048d85-ddc6-45bb-a751-e830dbcc0adc"
  }
}

resource "aws_instance" "bar" {
  count = "${aws_instance.foo.foo}"
  tags = {
    yor_trace = "811a9297-df14-450e-b85c-5c42dce5f451"
  }
}
