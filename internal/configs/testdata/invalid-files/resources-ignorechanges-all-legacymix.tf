resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = ["*", "foo"]
  }
  tags = {
    git_org = "idansluprisma"
  }
}
