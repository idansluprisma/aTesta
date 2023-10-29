resource "aws_instance" "a" {
  foo = "bar"
  tags = {
    git_org = "idansluprisma"
  }
}

module "child" {
  source = "./child"
  in     = aws_instance.a.id
}

output "out" {
  value = aws_instance.a.id
}
