resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

data "aws_vpc" "bar" {
  foo = "${aws_instance.foo.foo}"
}
