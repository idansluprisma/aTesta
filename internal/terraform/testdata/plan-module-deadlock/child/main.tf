resource "aws_instance" "foo" {
  count = "${length("abc")}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org = "idansluprisma"
  }
}
