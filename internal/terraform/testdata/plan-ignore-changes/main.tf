variable "foo" {}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    yor_trace = "c3a7d242-4923-457f-ad08-f0b16525468b"
  }
}
