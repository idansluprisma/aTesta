variable "vpc_id" {}

resource "aws_instance" "child" {
  vpc_id = var.vpc_id
  tags = {
    yor_trace = "f80386dd-273f-4686-9ffc-ca8b09f36a93"
  }
}

output "modout" {
  value = aws_instance.child.id
}
