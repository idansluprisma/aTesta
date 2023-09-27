resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    git_org = "idansluprisma"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
