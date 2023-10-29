resource "aws_instance" "foo" {
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    git_org = "idansluprisma"
  }
}
