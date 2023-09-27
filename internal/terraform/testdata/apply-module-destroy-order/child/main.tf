resource "aws_instance" "a" {
  id = "a"
  tags = {
    git_org = "idansluprisma"
  }
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
