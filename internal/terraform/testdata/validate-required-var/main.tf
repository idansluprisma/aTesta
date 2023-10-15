variable "foo" {}

resource "aws_instance" "web" {
  ami = "${var.foo}"
  tags = {
    yor_trace = "84eeae69-e7a9-44e7-9cad-c3d831bf4a6f"
  }
}
