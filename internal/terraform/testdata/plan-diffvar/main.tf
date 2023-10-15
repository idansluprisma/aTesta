resource "aws_instance" "foo" {
  num = "3"
  tags = {
    yor_trace = "7388bbf7-d44f-4ee1-b247-f4df60c40f9e"
  }
}

resource "aws_instance" "bar" {
  num = aws_instance.foo.num
  tags = {
    yor_trace = "0a1bd441-9f06-420c-9ac8-4904a59d687c"
  }
}
