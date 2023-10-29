resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  tags = {
    git_org = "idansluprisma"
  }
}
