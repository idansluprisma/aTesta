resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    git_org = "idansluprisma"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
