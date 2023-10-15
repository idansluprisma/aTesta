module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "b50e86b8-d8c9-470c-898e-043af637fd5c"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "66d85bc1-c7ac-439a-8860-1e9994e34ee5"
  }
}
