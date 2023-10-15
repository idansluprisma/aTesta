module "child" {
  input  = aws_instance.bar.foo
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    yor_trace = "da1086a2-717d-498a-88c1-8f1fdd27c314"
  }
}
