resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  count = "${aws_instance.foo.foo}"
  tags = {
    git_org = "idansluprisma"
  }
}
