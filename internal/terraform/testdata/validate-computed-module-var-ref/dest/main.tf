variable "destin" {}

resource "aws_instance" "dest" {
  attr = "${var.destin}"
  tags = {
    yor_trace = "6f134423-ea29-44ea-9dde-9e0599d39829"
  }
}
