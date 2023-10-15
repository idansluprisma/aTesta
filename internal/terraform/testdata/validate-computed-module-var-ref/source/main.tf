resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    yor_trace = "750b2d4c-f412-4e0f-ab08-6c0c1f84e021"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
