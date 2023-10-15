variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  count = "${var.foo}"
  tags = {
    yor_trace = "c3882bd1-690e-41ee-bc8a-f62038431675"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    yor_trace = "d9e19a5b-73fd-4768-b7a6-0318cf9110c2"
  }
}
