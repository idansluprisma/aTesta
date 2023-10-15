resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "4d9db3a1-1f81-4c2d-8418-0970992dc5aa"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.foo.foo}"
}
