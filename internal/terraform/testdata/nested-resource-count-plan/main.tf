resource "aws_instance" "foo" {
  count = 2
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bar" {
  count = "${length(aws_instance.foo.*.id)}"
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "baz" {
  count = "${length(aws_instance.bar.*.id)}"
  tags = {
    git_org = "idansluprisma"
  }
}
