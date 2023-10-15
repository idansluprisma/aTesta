variable "foo" {
  sensitive = true
}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    yor_trace = "79167c8d-eb1d-43a0-87d7-0a47778cf460"
  }
}
