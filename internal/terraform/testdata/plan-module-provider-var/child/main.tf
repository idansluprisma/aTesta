variable "foo" {}

provider "aws" {
  value = "${var.foo}"
}

resource "aws_instance" "test" {
  value = "hello"
  tags = {
    yor_trace = "70c99c98-ba76-4865-9c1e-6749e49db35e"
  }
}
