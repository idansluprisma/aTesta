variable "value" {}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    yor_trace = "c601a364-b96e-4ca5-a77e-cef2c16c9bce"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {
    command = "${aws_instance.foo.value}"
  }
  tags = {
    yor_trace = "4ce3759b-8e09-4f6d-8281-227b170825d5"
  }
}
