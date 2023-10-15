variable "value" {
  default = ""
}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    yor_trace = "96ae1e2f-1c5f-4293-93bb-635cbadd5b35"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "52288622-cd23-45ff-b364-cc4f87fc95c0"
  }
}
