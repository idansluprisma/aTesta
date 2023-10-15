resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "4039a66c-4bc3-48ad-95da-eb7aaafa4022"
  }
}

resource "aws_instance" "bar" {
  foo         = "${aws_instance.foo.id}"
  require_new = "yes"
  tags = {
    yor_trace = "08782ec8-5793-4782-bfbf-6b54e18f207e"
  }
}
