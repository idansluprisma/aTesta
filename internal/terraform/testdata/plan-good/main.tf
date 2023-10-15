resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "742b6a56-2bbc-40c6-b657-560b1fd4287d"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "36e4ad0a-bc5c-4252-9120-f81c04d5bab5"
  }
}
