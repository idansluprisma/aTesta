variable "foo" {}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    yor_trace = "bab6cc38-8dc5-4dda-88f5-95bf63f218fc"
  }
}
