resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "8dc33fdc-7cce-4069-ac5b-487326f8449e"
  }
}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "43db3d46-04c2-439a-a734-1df99b88c4ee"
  }
}
