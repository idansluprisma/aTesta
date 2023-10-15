variable "var" {}

resource "aws_instance" "foo" {
  value = "${var.var}"
  tags = {
    yor_trace = "23e2f180-23a2-4e56-8b28-e051d25e9112"
  }
}
