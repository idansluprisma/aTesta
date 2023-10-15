resource "aws_instance" "web" {
  foo   = "${aws_instance.web.0.foo}"
  count = 4
  tags = {
    yor_trace = "dbb60d3f-d8c7-407c-8438-4d7d43e5c92e"
  }
}
