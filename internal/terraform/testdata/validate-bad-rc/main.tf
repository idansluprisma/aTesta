resource "aws_instance" "test" {
  foo = "bar"
  tags = {
    yor_trace = "36c0f0b9-279a-4086-bbb2-c03cfe60fa22"
  }
}
