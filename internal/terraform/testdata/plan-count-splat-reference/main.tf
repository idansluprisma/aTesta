resource "aws_instance" "foo" {
  name  = "foo ${count.index}"
  count = 3
  tags = {
    yor_trace = "b4e107dd-3c17-4b41-aabc-428286742b7a"
  }
}

resource "aws_instance" "bar" {
  foo_name = "${aws_instance.foo.*.name[count.index]}"
  count    = 3
  tags = {
    yor_trace = "c5760384-6600-477d-8646-771ce9b895bb"
  }
}
