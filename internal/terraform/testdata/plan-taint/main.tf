resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "420a20c7-1dfc-4df4-bb9c-77f4a05d5219"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "e48d6b32-e335-459a-aec6-2611990542bc"
  }
}
