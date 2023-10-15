resource "aws_instance" "foo" {
  value = "2"
  tags = {
    yor_trace = "6b1767b7-fd0a-43f7-ad52-428d92f20afd"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "0ff759f9-d788-4f4a-b458-41ade49744ff"
  }
}
