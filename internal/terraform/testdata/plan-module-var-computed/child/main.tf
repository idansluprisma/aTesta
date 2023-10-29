resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
