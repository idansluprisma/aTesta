resource "aws_instance" "foo" {
  count = 13
  tags = {
    yor_trace = "f2d3148e-3d6b-48b2-afa6-049199476775"
  }
}
