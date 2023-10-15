resource "aws_instance" "a" {
  foo = "bar"
  tags = {
    yor_trace = "3032c919-2e89-4095-8811-9f1edd52e4f8"
  }
}

module "child" {
  source = "./child"
  in     = aws_instance.a.id
}

output "out" {
  value = aws_instance.a.id
}
