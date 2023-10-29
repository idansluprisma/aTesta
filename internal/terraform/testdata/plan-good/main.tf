resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    git_org = "idansluprisma"
  }
}
