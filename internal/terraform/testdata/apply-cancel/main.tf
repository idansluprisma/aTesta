resource "aws_instance" "foo" {
  value = "2"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    git_org = "idansluprisma"
  }
}
