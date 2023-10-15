variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    yor_trace = "51441d77-2d22-4940-967c-2b6a12129499"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.bar.*.foo, 11)}"
}
