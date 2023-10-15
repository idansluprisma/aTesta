variable "otherresourcename" {
  default = "aws_instance.web1"
}

variable "vairable_with_interpolation" {
  default = "${var.otherresourcename}"
}

resource "aws_instance" "web" {
  depends_on = ["${var.otherresourcename}}"]
  tags = {
    yor_trace = "0ecdce06-8242-4298-a1cd-96cf3a0a013f"
  }
}
