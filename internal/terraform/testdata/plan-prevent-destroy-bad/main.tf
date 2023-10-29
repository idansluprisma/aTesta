resource "aws_instance" "foo" {
  require_new = "yes"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    git_org = "idansluprisma"
  }
}
