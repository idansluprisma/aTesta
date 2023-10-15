resource "aws_instance" "foo" {
  count   = 2
  compute = "ip.#"
  tags = {
    yor_trace = "672c134e-3dc6-456e-842c-334ef28b5b8b"
  }
}

resource "aws_instance" "bar" {
  count = 1
  foo   = "${aws_instance.foo.*.ip[count.index]}"
  tags = {
    yor_trace = "5d77d511-eec3-4184-825a-0628832c0bb3"
  }
}
