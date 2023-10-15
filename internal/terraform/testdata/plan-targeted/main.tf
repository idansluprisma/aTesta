resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "51c5c795-607b-4fec-ae6a-34d510541d03"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.num
  tags = {
    yor_trace = "e89421f9-6cd3-4441-b273-7988839c2000"
  }
}

module "mod" {
  source = "./mod"
  count  = 1
}
