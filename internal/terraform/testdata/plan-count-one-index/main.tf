resource "aws_instance" "foo" {
  count = 1
  foo   = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.0.foo}"
  tags = {
    git_org = "idansluprisma"
  }
}
