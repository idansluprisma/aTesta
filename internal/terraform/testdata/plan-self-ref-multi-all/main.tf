resource "aws_instance" "web" {
  foo   = "${aws_instance.web.*.foo}"
  count = 4
  tags = {
    yor_trace = "399077d1-f99b-42a3-a0b4-f3fb320a13b7"
  }
}
