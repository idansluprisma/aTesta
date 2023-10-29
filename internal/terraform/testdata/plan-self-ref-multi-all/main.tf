resource "aws_instance" "web" {
  foo   = "${aws_instance.web.*.foo}"
  count = 4
  tags = {
    git_org = "idansluprisma"
  }
}
