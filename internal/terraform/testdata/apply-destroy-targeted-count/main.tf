resource "aws_instance" "foo" {
  count = 3
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = ["${aws_instance.foo.*.id}"]
  tags = {
    git_org = "idansluprisma"
  }
}
