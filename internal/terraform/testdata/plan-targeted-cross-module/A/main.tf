resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
