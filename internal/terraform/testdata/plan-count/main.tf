resource "aws_instance" "foo" {
  count = 5
  foo   = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  foo = "${join(",", aws_instance.foo.*.foo)}"
  tags = {
    git_org = "idansluprisma"
  }
}
