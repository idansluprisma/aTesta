resource "aws_instance" "foo" {
  count = "${length("abc")}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "c3fe890b-832b-4da2-9743-c786e71610d2"
  }
}
