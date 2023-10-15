resource "aws_instance" "foo" {
  num = "2"
  foo = "bar"
  tags = {
    yor_trace = "bce15d76-7385-498b-ba2d-ed43535131de"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "a268f680-55c8-4d52-a92f-59087621870a"
  }
}
