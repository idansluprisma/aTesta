variable "secret" {
  type      = string
  default   = " password123"
  sensitive = true
}

resource "aws_instance" "foo" {
  provisioner "test" {
    test_string = var.secret
  }
  tags = {
    yor_trace = "da9cba2a-b34e-401e-9c70-4bb97384f0be"
  }
}
