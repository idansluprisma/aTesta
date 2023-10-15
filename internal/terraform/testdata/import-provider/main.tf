provider "aws" {
  foo = "bar"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "c6fb3d62-805e-4641-a1f3-853cf81b1498"
  }
}
