resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "4a1f093a-e3de-4295-ad7a-d4060da857b6"
  }
}

resource "aws_instance" "bar" {
  foo = ["${aws_instance.foo.*.id}"]
  tags = {
    yor_trace = "02505c34-6148-4fc8-8d30-ec3c6266646c"
  }
}
