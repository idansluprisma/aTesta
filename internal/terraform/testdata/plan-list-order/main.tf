resource "aws_instance" "a" {
  foo = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20]
  tags = {
    yor_trace = "c86353dd-570d-4811-9b30-f67928682d2d"
  }
}

resource "aws_instance" "b" {
  foo = "${aws_instance.a.foo}"
  tags = {
    yor_trace = "e25ee21d-7a11-421e-b9ee-4410dfd2e154"
  }
}
