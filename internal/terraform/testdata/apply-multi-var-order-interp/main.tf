variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    yor_trace = "fb7006bf-33f0-4e17-b646-49b29dffebef"
  }
}

resource "aws_instance" "baz" {
  count = "${var.num}"
  foo   = "baz-${element(aws_instance.bar.*.foo, count.index)}"
  tags = {
    yor_trace = "dd36f60e-325a-46a9-b9e3-82e18145e6a5"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.baz.*.foo, 11)}"
}
