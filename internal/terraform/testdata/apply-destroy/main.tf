resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "93bb9ce1-c4bc-4896-a46f-1f6a8d165cf5"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "b5e9ae23-37c2-4a93-b324-d903c727a280"
  }
}
