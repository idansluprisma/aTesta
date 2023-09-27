output "output" {
  value = "${aws_instance.foo.foo}"
}

resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}
