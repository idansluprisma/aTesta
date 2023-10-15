resource "aws_instance" "foo" {
  count = 2
  ami   = "ami-bcd456"
  lifecycle {
    ignore_changes = ["ami"]
  }
  tags = {
    yor_trace = "3d302c06-689b-4dd7-b3d9-3207b4aa3e45"
  }
}

resource "aws_eip" "foo" {
  count    = 2
  instance = "${aws_instance.foo.*.id[count.index]}"
  tags = {
    yor_trace = "274143a7-6512-4071-a761-4adfb2b31b13"
  }
}
