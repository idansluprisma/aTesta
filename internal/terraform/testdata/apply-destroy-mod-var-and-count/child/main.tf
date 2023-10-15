variable "mod_count" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count}"
  tags = {
    yor_trace = "2b0ee939-1b70-43b5-885b-53ebf3fea16f"
  }
}
