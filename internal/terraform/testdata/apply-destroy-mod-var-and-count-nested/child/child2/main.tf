variable "mod_count_child2" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count_child2}"
  tags = {
    yor_trace = "afddb231-0903-4c81-a9bf-c2880e8363fa"
  }
}
