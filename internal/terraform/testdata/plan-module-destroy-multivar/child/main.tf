variable "instance_count" {
  default = "1"
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  bar   = "bar"
  tags = {
    yor_trace = "439cd7d9-e316-4473-aa74-9d96903bf21e"
  }
}
