resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "8d4cf849-a1fc-4a88-961f-c705c80bfc39"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "c5d24bf3-9b5f-4aa3-8762-725dc5acf223"
  }
}
