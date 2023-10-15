variable "num" {}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "bar${count.index}"
  tags = {
    yor_trace = "66b5cf0d-3ad8-4eab-b165-c5b21e5cc0c0"
  }
}

output "output" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
