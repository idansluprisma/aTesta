resource "aws_instance" "foo" {
  foo   = "foo"
  count = 3
  tags = {
    yor_trace = "ed138ad2-1799-4f7b-938f-390aa76f02e6"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "ea3e4e52-bffa-4ab8-ba04-feb6a8ab1b16"
  }
}
