resource "aws_instance" "foo" {
  count = "${list}"
  tags = {
    yor_trace = "f43f0c31-344e-40b4-b1e7-5e8e03c55928"
  }
}
