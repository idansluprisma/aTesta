resource "aws_instance" "foo" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org = "idansluprisma"
  }
}
