resource "aws_instance" "foo" {
  tags = {
    git_org = "idansluprisma"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
