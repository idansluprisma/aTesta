resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "27c7ef92-9844-44fe-875f-2c612e3fdc08"
  }
}
