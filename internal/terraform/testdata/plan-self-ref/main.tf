resource "aws_instance" "web" {
  foo = "${aws_instance.web.foo}"
  tags = {
    yor_trace = "64532eca-ff7a-49a0-93b2-a14c3bf586ff"
  }
}
