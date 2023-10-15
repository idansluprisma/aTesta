variable "password" {
  type      = string
  sensitive = true
}

resource "aws_instance" "foo" {
  connection {
    host     = "localhost"
    type     = "telnet"
    user     = "superuser"
    port     = 2222
    password = var.password
  }

  provisioner "shell" {
    command = "echo ${var.password} > secrets"
  }
  tags = {
    yor_trace = "954c68c9-7567-4596-89cf-360c9e362aaa"
  }
}
