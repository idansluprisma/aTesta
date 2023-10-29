resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "idansluprisma"
  }
}

output "num" {
  value = "${aws_instance.foo.num}"
}
