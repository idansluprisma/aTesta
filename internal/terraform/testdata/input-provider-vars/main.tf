variable "foo" {}

resource "aws_instance" "foo" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "f1594151-0f7c-47dc-8f55-c5617765f18d"
  }
}
